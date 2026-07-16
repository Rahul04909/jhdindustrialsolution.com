<?php

namespace Botble\Ecommerce\Tables;

use Botble\Base\Facades\BaseHelper;
use Botble\Ecommerce\Enums\QuoteStatusEnum;
use Botble\Ecommerce\Models\QuoteRequest;
use Botble\Table\Abstracts\TableAbstract;
use Botble\Table\Actions\DeleteAction;
use Botble\Table\Actions\ViewAction;
use Botble\Table\BulkActions\DeleteBulkAction;
use Botble\Table\BulkChanges\CreatedAtBulkChange;
use Botble\Table\BulkChanges\EmailBulkChange;
use Botble\Table\BulkChanges\NameBulkChange;
use Botble\Table\BulkChanges\StatusBulkChange;
use Botble\Table\Columns\CreatedAtColumn;
use Botble\Table\Columns\EmailColumn;
use Botble\Table\Columns\FormattedColumn;
use Botble\Table\Columns\IdColumn;
use Botble\Table\Columns\NameColumn;
use Botble\Table\Columns\StatusColumn;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Validation\Rule;
use Symfony\Component\HttpFoundation\Response;

class QuoteTable extends TableAbstract
{
    public function setup(): void
    {
        $this
            ->model(QuoteRequest::class)
            ->addActions([
                ViewAction::make()
                    ->route('quote-requests.show')
                    ->permission('quote-requests.index'),
                DeleteAction::make()->route('quote-requests.destroy'),
            ])
            ->queryUsing(function (Builder $query) {
                return $query
                    ->select([
                        'id',
                        'product_id',
                        'name',
                        'email',
                        'phone',
                        'company_name',
                        'quantity',
                        'status',
                        'created_at',
                    ])
                    ->with(['product:id,name']);
            });
    }

    public function columns(): array
    {
        return [
            IdColumn::make(),
            NameColumn::make()
                ->title(trans('plugins/ecommerce::quote-requests.customer_name'))
                ->route('quote-requests.show')
                ->alignStart(),
            EmailColumn::make(),
            NameColumn::make('company_name')
                ->title(trans('plugins/ecommerce::quote-requests.company'))
                ->alignStart(),
            FormattedColumn::make('product_id')
                ->title(trans('plugins/ecommerce::quote-requests.product'))
                ->alignStart()
                ->renderUsing(function (FormattedColumn $column) {
                    $item = $column->getItem();
                    if ($item->product) {
                        return BaseHelper::clean($item->product->name);
                    }

                    return 'N/A';
                }),
            NameColumn::make('quantity')
                ->title(trans('plugins/ecommerce::quote-requests.quantity'))
                ->alignStart(),
            StatusColumn::make(),
            CreatedAtColumn::make(),
        ];
    }

    public function buttons(): array
    {
        return [];
    }

    public function bulkActions(): array
    {
        return [
            DeleteBulkAction::make()->permission('quote-requests.destroy'),
        ];
    }

    public function getBulkChanges(): array
    {
        return [
            NameBulkChange::make()
                ->name('name')
                ->title(trans('plugins/ecommerce::quote-requests.customer_name')),
            EmailBulkChange::make(),
            StatusBulkChange::make()
                ->choices(QuoteStatusEnum::labels())
                ->validate(['required', Rule::in(QuoteStatusEnum::values())]),
            CreatedAtBulkChange::make(),
        ];
    }

    public function renderTable($data = [], $mergeData = []): View|Factory|Response
    {
        if ($this->isEmpty()) {
            return view('plugins/ecommerce::quote-requests.intro');
        }

        return parent::renderTable($data, $mergeData);
    }
}

<?php

namespace Botble\Ecommerce\Tables;

use Botble\Base\Facades\BaseHelper;
use Botble\Base\Facades\Html;
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
use Botble\Table\Columns\Column;
use Botble\Table\Columns\CreatedAtColumn;
use Botble\Table\Columns\EmailColumn;
use Botble\Table\Columns\IdColumn;
use Botble\Table\Columns\NameColumn;
use Botble\Table\Columns\StatusColumn;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Relations\Relation;
use Illuminate\Database\Query\Builder as QueryBuilder;
use Illuminate\Http\JsonResponse;
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
            ]);
    }

    public function ajax(): JsonResponse
    {
        $data = $this->table
            ->eloquent($this->query())
            ->editColumn('name', function (QuoteRequest $item) {
                return BaseHelper::clean($item->name);
            })
            ->editColumn('product_id', function (QuoteRequest $item) {
                if (! empty($item->product) && $item->product->name) {
                    return BaseHelper::clean($item->product->name);
                }

                return 'N/A';
            });

        return $this->toJson($data);
    }

    public function query(): Relation|Builder|QueryBuilder
    {
        $query = $this->getModel()
            ->query()
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

        return $this->applyScopes($query);
    }

    public function columns(): array
    {
        return [
            IdColumn::make(),
            Column::make('name')
                ->title(trans('plugins/ecommerce::quote-requests.customer_name'))
                ->alignStart(),
            EmailColumn::make(),
            Column::make('company_name')
                ->title(trans('plugins/ecommerce::quote-requests.company'))
                ->alignStart(),
            Column::make('product_id')
                ->title(trans('plugins/ecommerce::quote-requests.product'))
                ->alignStart(),
            Column::make('quantity')
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

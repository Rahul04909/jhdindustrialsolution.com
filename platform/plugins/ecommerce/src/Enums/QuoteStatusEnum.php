<?php

namespace Botble\Ecommerce\Enums;

use Botble\Base\Supports\Enum;
use Illuminate\Support\Facades\Html;

/**
 * @method static QuoteStatusEnum PENDING()
 * @method static QuoteStatusEnum QUOTED()
 * @method static QuoteStatusEnum ACCEPTED()
 * @method static QuoteStatusEnum DECLINED()
 * @method static QuoteStatusEnum CANCELLED()
 */
class QuoteStatusEnum extends Enum
{
    public const PENDING = 'pending';
    public const QUOTED = 'quoted';
    public const ACCEPTED = 'accepted';
    public const DECLINED = 'declined';
    public const CANCELLED = 'cancelled';

    protected static $langPath = 'plugins/ecommerce::quote-requests.status';

    public static $labels = [];

    protected static function boot(): void
    {
        parent::boot();

        static::$labels = [
            self::PENDING => trans('plugins/ecommerce::quote-requests.status.pending'),
            self::QUOTED => trans('plugins/ecommerce::quote-requests.status.quoted'),
            self::ACCEPTED => trans('plugins/ecommerce::quote-requests.status.accepted'),
            self::DECLINED => trans('plugins/ecommerce::quote-requests.status.declined'),
            self::CANCELLED => trans('plugins/ecommerce::quote-requests.status.cancelled'),
        ];
    }

    public function toHtml(): string
    {
        return match ($this->value) {
            self::PENDING => Html::tag('span', self::PENDING()->label(), ['class' => 'badge bg-warning text-dark'])->toHtml(),
            self::QUOTED => Html::tag('span', self::QUOTED()->label(), ['class' => 'badge bg-info'])->toHtml(),
            self::ACCEPTED => Html::tag('span', self::ACCEPTED()->label(), ['class' => 'badge bg-success'])->toHtml(),
            self::DECLINED => Html::tag('span', self::DECLINED()->label(), ['class' => 'badge bg-danger'])->toHtml(),
            self::CANCELLED => Html::tag('span', self::CANCELLED()->label(), ['class' => 'badge bg-secondary'])->toHtml(),
            default => (string) parent::toHtml(),
        };
    }
}

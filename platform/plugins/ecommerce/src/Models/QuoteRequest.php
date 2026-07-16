<?php

namespace Botble\Ecommerce\Models;

use Botble\Base\Models\BaseModel;
use Botble\Ecommerce\Enums\QuoteStatusEnum;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class QuoteRequest extends BaseModel
{
    protected $table = 'quote_requests';

    protected $fillable = [
        'product_id',
        'customer_id',
        'name',
        'email',
        'phone',
        'company_name',
        'quantity',
        'message',
        'status',
        'admin_note',
        'quoted_price',
        'quoted_at',
    ];

    protected $casts = [
        'quantity' => 'integer',
        'quoted_price' => 'decimal:2',
        'quoted_at' => 'datetime',
        'status' => QuoteStatusEnum::class,
    ];

    public function product(): BelongsTo
    {
        return $this->belongsTo(Product::class, 'product_id');
    }

    public function customer(): BelongsTo
    {
        return $this->belongsTo(Customer::class, 'customer_id');
    }
}

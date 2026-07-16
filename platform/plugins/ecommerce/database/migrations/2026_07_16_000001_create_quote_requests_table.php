<?php

use Botble\Ecommerce\Models\Customer;
use Botble\Ecommerce\Models\Product;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('quote_requests', function (Blueprint $table) {
            $table->id();
            $table->foreignIdFor(Product::class)->nullable()->constrained('ec_products')->cascadeOnUpdate()->nullOnDelete();
            $table->foreignIdFor(Customer::class)->nullable()->constrained('ec_customers')->cascadeOnUpdate()->nullOnDelete();
            $table->string('name');
            $table->string('email');
            $table->string('phone', 60)->nullable();
            $table->string('company_name')->nullable();
            $table->unsignedInteger('quantity')->default(1);
            $table->longText('message')->nullable();
            $table->string('status', 60)->default('pending');
            $table->text('admin_note')->nullable();
            $table->decimal('quoted_price', 15, 2)->nullable();
            $table->timestamp('quoted_at')->nullable();
            $table->timestamps();

            $table->index('status');
            $table->index('email');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('quote_requests');
    }
};

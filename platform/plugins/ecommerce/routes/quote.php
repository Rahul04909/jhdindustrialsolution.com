<?php

use Botble\Base\Facades\AdminHelper;
use Botble\Ecommerce\Http\Controllers\QuoteController;
use Botble\Ecommerce\Http\Controllers\Fronts\QuoteController as FrontQuoteController;
use Botble\Theme\Facades\Theme;
use Illuminate\Support\Facades\Route;

Theme::registerRoutes(function (): void {
    Route::controller(FrontQuoteController::class)
        ->name('public.quote-requests.')
        ->group(function (): void {
            Route::post('request-quote', 'store')->name('store');
            Route::get('request-quote', 'index')->name('index');
            Route::get('request-quote/success', 'success')->name('success');
        });
});

AdminHelper::registerRoutes(function (): void {
    Route::group(['prefix' => 'ecommerce'], function (): void {
        Route::group(['prefix' => 'quote-requests', 'as' => 'quote-requests.'], function (): void {
            Route::get('/', [QuoteController::class, 'index'])
                ->name('index')
                ->permission('quote-requests.index');

            Route::get('{quoteRequest}', [QuoteController::class, 'show'])
                ->name('show')
                ->permission('quote-requests.show');

            Route::put('{quoteRequest}', [QuoteController::class, 'update'])
                ->name('update')
                ->permission('quote-requests.edit');

            Route::delete('{quoteRequest}', [QuoteController::class, 'destroy'])
                ->name('destroy')
                ->permission('quote-requests.destroy');
        });
    });
});

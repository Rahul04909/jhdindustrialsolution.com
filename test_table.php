<?php
require_once __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';

$kernel = $app->make(Illuminate\Contracts\Console\Kernel::class);
$kernel->bootstrap();

try {
    $table = new Botble\Ecommerce\Tables\QuoteTable;
    echo "QuoteTable instantiated successfully" . PHP_EOL;
    
    $query = $table->query();
    echo "Query count: " . $query->count() . PHP_EOL;
    
    // Replace the current request with an AJAX request
    $newRequest = Illuminate\Http\Request::create(
        'http://localhost/admin/ecommerce/quote-requests',
        'POST',
        [],
        [],
        [],
        ['HTTP_X-Requested-With' => 'XMLHttpRequest', 'HTTP_Accept' => 'application/json']
    );
    $app->instance('request', $newRequest);
    
    echo "Testing ajax()..." . PHP_EOL;
    $result = $table->ajax();
    echo "AJAX response: " . $result->getContent() . PHP_EOL;
} catch (Exception $e) {
    echo "ERROR: " . $e->getMessage() . PHP_EOL;
    echo "Class: " . get_class($e) . PHP_EOL;
    echo "File: " . $e->getFile() . ":" . $e->getLine() . PHP_EOL;
    echo "Previous: " . ($e->getPrevious() ? $e->getPrevious()->getMessage() : 'none') . PHP_EOL;
}

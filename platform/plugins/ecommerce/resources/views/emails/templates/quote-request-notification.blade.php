<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body { font-family: Arial, sans-serif; line-height: 1.6; color: #333; }
        .container { max-width: 600px; margin: 0 auto; padding: 20px; }
        .header { background: #1a1a2e; color: #fff; padding: 20px; text-align: center; }
        .header h1 { margin: 0; font-size: 24px; }
        .content { padding: 30px 20px; background: #f9f9f9; }
        .info-table { width: 100%; border-collapse: collapse; margin: 20px 0; }
        .info-table th, .info-table td { padding: 10px; border-bottom: 1px solid #ddd; text-align: left; }
        .info-table th { background: #f0f0f0; width: 35%; }
        .badge { display: inline-block; padding: 4px 12px; background: #ffc107; color: #333; border-radius: 4px; font-size: 12px; font-weight: bold; text-transform: uppercase; }
        .footer { text-align: center; padding: 20px; color: #999; font-size: 12px; }
        .btn { display: inline-block; padding: 10px 20px; background: #1a1a2e; color: #fff; text-decoration: none; border-radius: 4px; margin-top: 20px; }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>{{ __('New Quote Request') }}</h1>
        </div>
        <div class="content">
            <p>{{ __('Hello,') }}</p>
            <p>{{ __('You have received a new quote request with the following details:') }}</p>

            <table class="info-table">
                <tr>
                    <th>{{ __('Request ID') }}</th>
                    <td>#{{ $quote_request_id }}</td>
                </tr>
                <tr>
                    <th>{{ __('Customer Name') }}</th>
                    <td>{{ $customer_name }}</td>
                </tr>
                <tr>
                    <th>{{ __('Customer Email') }}</th>
                    <td>{{ $customer_email }}</td>
                </tr>
                <tr>
                    <th>{{ __('Customer Phone') }}</th>
                    <td>{{ $customer_phone }}</td>
                </tr>
                <tr>
                    <th>{{ __('Company') }}</th>
                    <td>{{ $company_name }}</td>
                </tr>
                <tr>
                    <th>{{ __('Product') }}</th>
                    <td>{{ $product_name }} (SKU: {{ $product_sku }})</td>
                </tr>
                <tr>
                    <th>{{ __('Product URL') }}</th>
                    <td><a href="{{ $product_url }}">{{ $product_url }}</a></td>
                </tr>
                <tr>
                    <th>{{ __('Quantity') }}</th>
                    <td>{{ $quantity }}</td>
                </tr>
                <tr>
                    <th>{{ __('Status') }}</th>
                    <td><span class="badge">{{ $status }}</span></td>
                </tr>
                <tr>
                    <th>{{ __('Customer Message') }}</th>
                    <td>{{ $message }}</td>
                </tr>
            </table>

            <p style="text-align: center;">
                <a href="{{ route('quote-requests.index') }}" class="btn">{{ __('View All Quote Requests') }}</a>
            </p>
        </div>
        <div class="footer">
            <p>&copy; {{ date('Y') }} {{ setting('admin_title') }}. {{ __('All rights reserved.') }}</p>
        </div>
    </div>
</body>
</html>

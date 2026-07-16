<!DOCTYPE html>
<html {!! Theme::htmlAttributes() !!}>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="csrf-token" content="{{ csrf_token() }}">

    {!! BaseHelper::googleFonts('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Source+Sans+Pro:wght@400;500;600;700&display=swap') !!}

    <style>
        :root {
            --color-1st: {{ theme_option('primary_color', '#fc2779') }};
            --primary-color: {{ theme_option('primary_color', '#fc2779') }};
            --color-2nd: {{ theme_option('secondary_color', '#03021a') }};
            --secondary-color: {{ theme_option('secondary_color', '#03021a') }};
            --primary-font: '{{ theme_option('primary_font', 'Inter') }}', sans-serif;
            --button-text-color: {{ theme_option('button_text_color', '#fff') }};
            --header-text-color: {{ theme_option('header_text_color', '#03021a') }};
            --header-button-background-color: {{ theme_option('header_button_background_color', '#fc2779') }};
            --header-button-text-color: {{ theme_option('header_button_text_color', '#fff') }};
            --header-text-hover-color: {{ theme_option('header_text_hover_color', '#fc2779') }};
            --header-text-accent-color: {{ theme_option('header_text_accent_color', '#fc2779') }};
            --header-diliver-border-color: {{ BaseHelper::hexToRgba(theme_option('header_text_color', '#03021a'), 0.15) }};
            --footer-background-color: {{ theme_option('footer_background_color', '#fafafa') }};
            --footer-text-color: {{ theme_option('footer_text_color', '#666') }};
            --footer-text-link-color: {{ theme_option('footer_text_link_color', '#333') }};
            --footer-text-link-hover-color: {{ theme_option('footer_text_link_hover_color', '#fc2779') }};
            --footer-border-color: {{ theme_option('footer_border_color', '#e1e1e1') }};
            --footer-heading-color: {{ theme_option('footer_heading_color', '#03021a') }};
        }
    </style>

    @php
        Theme::asset()->remove('language-css');
        Theme::asset()->container('footer')->remove('language-public-js');
        Theme::asset()->container('footer')->remove('simple-slider-owl-carousel-css');
        Theme::asset()->container('footer')->remove('simple-slider-owl-carousel-js');
        Theme::asset()->container('footer')->remove('simple-slider-css');
        Theme::asset()->container('footer')->remove('simple-slider-js');
    @endphp

    {!! Theme::header() !!}
</head>

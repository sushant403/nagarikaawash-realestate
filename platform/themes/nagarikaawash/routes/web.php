<?php

use Botble\Location\Models\City;

// Custom routes
Route::group(['namespace' => 'Theme\Nagarikaawash\Http\Controllers', 'middleware' => ['web', 'core']], function () {
    Route::group(apply_filters(BASE_FILTER_GROUP_PUBLIC_ROUTE, []), function () {
        Route::get(SlugHelper::getPrefix(City::class, 'city') . '/{slug}',
            'NagarikaawashController@getPropertiesByCity')
            ->name('public.properties-by-city');

        Route::get('agents', 'NagarikaawashController@getAgents')->name('public.agents');
        Route::get('agents/{username}', 'NagarikaawashController@getAgent')->name('public.agent');

        Route::get('wishlist', 'NagarikaawashController@getWishlist')->name('public.wishlist');

        Route::get('ajax/stateses-by-country', 'NagarikaawashController@ajaxGetStatesByCountry')->name('public.ajax.stateses-by-country');
        Route::get('ajax/cities-by-state', 'NagarikaawashController@ajaxGetCitiesByState')->name('public.ajax.cities-by-state');
        Route::get('ajax/cities', 'NagarikaawashController@ajaxGetCities')->name('public.ajax.cities');

        Route::get('ajax/properties', 'NagarikaawashController@ajaxGetProperties')->name('public.ajax.properties');
        Route::get('ajax/posts', 'NagarikaawashController@ajaxGetPosts')->name('public.ajax.posts');
        Route::post('ajax/properties/map', 'NagarikaawashController@ajaxGetPropertiesForMap')
            ->name('public.ajax.properties.map');

        Route::get('ajax/agents/featured', 'NagarikaawashController@ajaxGetFeaturedAgents')
            ->name('public.ajax.featured-agents');

        Route::get('ajax/testimonials', 'NagarikaawashController@ajaxGetTestimonials')
            ->name('public.ajax.testimonials');
        Route::get('ajax/real-estate-reviews/{id}', 'NagarikaawashController@ajaxGetRealEstateReviews')
            ->name('public.ajax.real-estate-reviews');
        Route::get('ajax/real-estate-rating/{id}', 'NagarikaawashController@ajaxGetRealEstateRating')
            ->name('public.ajax.real-estate-rating');

        Route::get('ajax/sub-categories', 'NagarikaawashController@ajaxGetSubCategories')->name('public.ajax.sub-categories');
    });
});

Theme::routes();

Route::group(['namespace' => 'Theme\Nagarikaawash\Http\Controllers', 'middleware' => ['web', 'core']], function () {
    Route::group(apply_filters(BASE_FILTER_GROUP_PUBLIC_ROUTE, []), function () {

        Route::get('/', 'NagarikaawashController@getIndex')->name('public.index');

        Route::get('sitemap.xml', [
            'as'   => 'public.sitemap',
            'uses' => 'NagarikaawashController@getSiteMap',
        ]);

        Route::get('{slug?}' . config('core.base.general.public_single_ending_url'), [
            'as'   => 'public.single',
            'uses' => 'NagarikaawashController@getView',
        ]);

    });

});

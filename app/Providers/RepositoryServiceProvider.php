<?php

namespace App\Providers;

use App\Interfaces\CustomerInterfaces;
use App\Interfaces\StakeholderInterfaces;
use App\Repositories\CustomerRepository;
use App\Repositories\StakeholderRepository;
use Illuminate\Support\ServiceProvider;

class RepositoryServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        $this->app->bind(StakeholderInterfaces::class, StakeholderRepository::class);
        $this->app->bind(CustomerInterfaces::class, CustomerRepository::class);
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }
}

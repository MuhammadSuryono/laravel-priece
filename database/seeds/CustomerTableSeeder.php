<?php

use App\Customer;
use Illuminate\Database\Seeder;

class CustomerTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Customer::truncate();
        $faker = \Faker\Factory::create();

        for ($i=0; $i < 20; $i++) {
            Customer::create([
                "username" => $faker->userName,
                "password" => $faker->password
            ]);
        }
    }
}

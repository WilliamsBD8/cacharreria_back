<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(CategoryTableSeeder::class);
        // $this->call(BrandTableSeeder::class);
        $this->call(ProductsTableSeeder::class);
        $this->call(RolesTableSeeder::class);
        $this->call(StatusInvoicesTableSeeder::class);
        $this->call(StatusInvoicesTableSeeder::class);
        $this->call(UserTableSeeder::class);
        $this->call(ProductsImagesTableSeeder::class);
    }
}

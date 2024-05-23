<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\ProductsImages;

class ProductsImagesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        
        for ($i=1; $i <= 30 ; $i++) {
            $data = [
                "id_product" => $i,
                "image" => "{$i}.jpg"
            ];
            ProductsImages::create($data);
        }
    }
}

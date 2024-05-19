<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Brand;

class BrandTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = [
            [
                'name' => 'Corona'
            ],
            [
                'name' => 'Imusa'
            ],
            [
                'name' => 'Oster'
            ],
            [
                'name' => 'Samurai'
            ],
            [
                'name' => 'Chino'
            ],
        ];

        // Iterar sobre los datos y crear registros usando el modelo Brand
        foreach ($data as $item) {
            Brand::create($item);
        }
    }
}

<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Category;
class CategoryTableSeeder extends Seeder
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
                'name' => 'Aseo'
            ],
            [
                'name' => 'Cristaleria'
            ],
            [
                'name' => 'Jugueteria'
            ],
            [
                'name' => 'Ropa'
            ],
            [
                'name' => 'Muebles'
            ],
        ];

        // Iterar sobre los datos y crear registros usando el modelo Category
        foreach ($data as $item) {
            Category::create($item);
        }
    }
}

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
                "name" => "Cocina",
                "description" => "Productos relacionados con utensilios de cocina y electrodomésticos para cocinar y preparar alimentos."
            ],
            [
                "name" => "Electrodomésticos",
                "description" => "Productos eléctricos para diversas tareas en el hogar, como cocinar, limpiar y organizar."
            ],
            [
                "name" => "Limpieza",
                "description" => "Productos para mantener la limpieza y el orden en el hogar, incluyendo utensilios y productos de limpieza."
            ],
            [
                "name" => "Almacenamiento",
                "description" => "Productos diseñados para almacenar y organizar alimentos, utensilios y otros objetos en el hogar."
            ],
            [
                "name" => "Utensilios",
                "description" => "Herramientas y utensilios útiles en la cocina y en otras tareas domésticas."
            ],
            [
                "name" => "Organización",
                "description" => "Productos diseñados para ayudar a organizar y maximizar el espacio en el hogar, incluyendo organizadores de armarios, cajones y más."
            ],
            [
                "name" => "Vajilla",
                "description" => "Productos para servir alimentos y bebidas, como platos, tazas, vasos y cubiertos."
            ],
            [
                "name" => "Exterior",
                "description" => "Productos diseñados para su uso en exteriores, como parrillas, enfriadores y otros utensilios para actividades al aire libre."
            ]
        ];

        // Iterar sobre los datos y crear registros usando el modelo Category
        // foreach ($data as $item) {
        //     Category::create($item);
        // }
    }
}

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
                "name" => "Tramontina",
                "description" => "Tramontina es una marca reconocida por su calidad en utensilios de cocina y accesorios, ofreciendo productos duraderos y funcionales."
            ],
            [
                "name" => "Oster",
                "description" => "Oster es una marca líder en electrodomésticos de cocina, conocida por sus productos innovadores y de alto rendimiento."
            ],
            [
                "name" => "Rubbermaid",
                "description" => "Rubbermaid ofrece una amplia gama de soluciones de almacenamiento y limpieza para el hogar, garantizando durabilidad y funcionalidad."
            ],
            [
                "name" => "Pyrex",
                "description" => "Pyrex es una marca reconocida por sus productos de vidrio de alta calidad para hornear, almacenar y servir alimentos de manera segura y conveniente."
            ],
            [
                "name" => "Tupperware",
                "description" => "Tupperware es una marca icónica conocida por sus productos de plástico duraderos y herméticos para almacenar y transportar alimentos de manera conveniente y segura."
            ]
        ];

        // Iterar sobre los datos y crear registros usando el modelo Brand
        // foreach ($data as $item) {
        //     Brand::create($item);
        // }
    }
}

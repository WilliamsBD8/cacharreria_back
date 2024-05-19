<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Products;

class ProductsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for ($i = 1; $i <= 100; $i++) {
            $value = rand(1000, 20000);
            $cost = rand(500, ($value - 100));
            $discount = 0;
            $random_number = rand(1, 100); // Genera un número aleatorio entre 1 y 100
            if ($random_number <= 30) 
                $discount = 0.05; // 30% de probabilidad de que haya impuestos
            elseif ($random_number <= 70) 
                $discount = 0.10; // 40% de probabilidad de que no haya impuestos
            elseif (rand(0, 1) !== 0)
                $discotun = 0.15; // 30% de probabilidad de que haya impuestos (si no se cumplen los casos anteriores)
            $tax = rand(0, 1) === 0 ? 0 : 0.19;

            $data = [
                'id_category'   => rand(1, 5),
                'id_brand'      => rand(1, 5),
                'name'          => "Producto {$i}",
                'description'   => "Descripción {$i}",
                'value'         => $value,
                'cost'          => $cost,
                'discount'      => $discount,
                'tax'           => $tax
            ];

            // Crear un nuevo registro utilizando el método estático create
            Products::create($data);
        }
    }
}

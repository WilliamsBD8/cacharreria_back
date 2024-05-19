<?php

namespace Database\Seeders;

use App\Models\StatusInvoices;

use Illuminate\Database\Seeder;

class StatusInvoicesTableSeeder extends Seeder
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
                'name'          => 'Aceptada'
            ],
            [
                'name'          => 'Fondos insuficientes'
            ],
            [
                'name'          => 'Fallida'
            ],
            [
                'name'          => 'Pendiente'
            ]
        ];

        // Iterar sobre los datos y crear registros usando el modelo Category
        foreach ($data as $item) {
            StatusInvoices::create($item);
        }
    }
}

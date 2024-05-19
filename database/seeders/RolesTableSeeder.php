<?php

namespace Database\Seeders;

use App\Models\Roles;

use Illuminate\Database\Seeder;

class RolesTableSeeder extends Seeder
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
                'name'          => 'Super Administrador',
                'description'   => 'Super Administrador'
            ],
            [
                'name'          => 'Administrador',
                'description'   => 'Administrador'
            ],
            [
                'name'          => 'Cliente',
                'description'   => 'Cliente'
            ]
        ];

        // Iterar sobre los datos y crear registros usando el modelo Category
        foreach ($data as $item) {
            Roles::create($item);
        }
    }
}

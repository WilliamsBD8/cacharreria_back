<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;

class UserTableSeeder extends Seeder
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
                'id_rol'        => 1,
                'name'          => 'Super Administrador',
                'email'         => 'iplanet@iplanetcolombia.com',
                'username'      => 'root',
                'password'      => password_hash('123456789', PASSWORD_DEFAULT),
                'status'        => 'active',
            ],
            [
                'id_rol'        => 2,
                'name'          => 'admin',
                'email'         => 'iplanet@iplanetcolombia.com',
                'username'      => 'admin',
                'password'      => password_hash('123456789', PASSWORD_DEFAULT),
                'status'        => 'active',
            ],
            [
                'id_rol'        => 3,
                'name'          => 'cliente',
                'email'         => 'iplanet@iplanetcolombia.com',
                'username'      => 'cliente',
                'password'      => password_hash('123456789', PASSWORD_DEFAULT),
                'status'        => 'active',
            ]
        ];

        foreach ($data as $item) {
            User::create($item); // Utilizamos el método estático create para crear un nuevo registro en la base de datos
        }
    }
}

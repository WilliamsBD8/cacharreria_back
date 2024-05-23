<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Brand;
use App\Models\Category;
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

        $marcas = [
            [
                "name" => "ChucheFun",
                "description" => "ChucheFun se especializa en productos divertidos y coloridos que atraen tanto a niños como a adultos jóvenes. Su línea de productos incluye accesorios personales y pequeños juguetes que son perfectos para regalar o coleccionar."
            ],
            [
                "name" => "Juguetilandia",
                "description" => "Juguetilandia ofrece una amplia gama de juguetes y juegos que estimulan la imaginación y el juego creativo. Desde figuras de acción hasta juegos de cartas miniatura, Juguetilandia es el destino favorito de los más pequeños y los coleccionistas."
            ],
            [
                "name" => "BrilloMundo",
                "description" => "BrilloMundo se dedica a productos llamativos y brillantes que destacan por su diseño y colorido. Sus accesorios personales y artículos de papelería están diseñados para añadir un toque de brillo y diversión a la vida cotidiana."
            ],
            [
                "name" => "Pequeñeces",
                "description" => "Pequeñeces se enfoca en productos útiles y decorativos que son perfectos para el día a día. Sus artículos van desde papelería práctica hasta pequeñas herramientas y decoraciones personales, siempre con un diseño encantador."
            ],
            [
                "name" => "ChicHogar",
                "description" => "ChicHogar combina estilo y funcionalidad en una variedad de productos para el hogar y el uso diario. Sus monederos, llaveros y broches no solo son prácticos, sino también elegantes y chic, perfectos para añadir un toque de estilo a cualquier día."
            ]
        ];
        
        $categorias = [
            [
                "name" => "Accesorios Personales",
                "description" => "Esta categoría incluye artículos diseñados para ser llevados y usados a diario, como pulseras, anillos, diademas, pendientes y llaveros. Estos productos no solo complementan el estilo personal, sino que también añaden un toque de diversión y originalidad."
            ],
            [
                "name" => "Juguetes y Juegos",
                "description" => "Aquí encontrarás una variedad de juguetes y juegos pequeños que proporcionan entretenimiento y diversión. Desde figuras de acción hasta carritos de juguete y juegos de cartas miniatura, estos productos están diseñados para estimular la imaginación y el juego interactivo."
            ],
            [
                "name" => "Papelería y Manualidades",
                "description" => "Esta categoría incluye productos de papelería y manualidades que son perfectos para la escuela, la oficina o el hogar. Lápices decorados, gomas de borrar con formas, sacapuntas y pegamentos con brillantina son solo algunos de los artículos que hacen que el trabajo y el estudio sean más entretenidos."
            ],
            [
                "name" => "Decoración y Coleccionables",
                "description" => "En esta categoría se encuentran productos decorativos y coleccionables que añaden carácter y estilo a cualquier espacio. Desde chapas y pines hasta mini figuras de colección y cajas de música, estos artículos son ideales para coleccionar o regalar."
            ],
            [
                "name" => "Hogar y Uso Diario",
                "description" => "Esta categoría abarca productos prácticos para el uso diario en el hogar y fuera de él. Linternas pequeñas, mini herramientas, candados con combinación y monederos de tela son ejemplos de artículos funcionales que combinan utilidad y diseño atractivo."
            ]
        ];

        $productos = [
            [
                "id_brand" => 1,
                "categories" => [
                    ["id_category" => 1, "products" => [
                        ["name" => "Pulseras de silicona", "description" => "Pulseras coloridas y divertidas de silicona."],
                        ["name" => "Pendientes baratos", "description" => "Pendientes económicos y de moda."]
                    ]],
                    ["id_category" => 2, "products" => [
                        ["name" => "Pequeños juguetes de plástico", "description" => "Juguetes pequeños de plástico para horas de diversión."],
                        ["name" => "Burbujeadores o pomperos", "description" => "Dispositivos para hacer burbujas."]
                    ]],
                    ["id_category" => 3, "products" => [
                        ["name" => "Pegatinas", "description" => "Pegatinas decorativas para personalizar cualquier cosa."],
                        ["name" => "Lápices y bolígrafos decorados", "description" => "Instrumentos de escritura con diseños divertidos."]
                    ]]
                ]
            ],
            [
                "id_brand" => 2,
                "categories" => [
                    ["id_category" => 2, "products" => [
                        ["name" => "Figuras de acción", "description" => "Figuras de acción para coleccionar y jugar."],
                        ["name" => "Carritos de juguete", "description" => "Pequeños coches de juguete para niños."],
                        ["name" => "Aviones de papel pre-diseñados", "description" => "Aviones de papel listos para armar y volar."]
                    ]],
                    ["id_category" => 4, "products" => [
                        ["name" => "Mini figuras de colección", "description" => "Figuras pequeñas ideales para coleccionistas."]
                    ]],
                    ["id_category" => 3, "products" => [
                        ["name" => "Juegos de cartas miniatura", "description" => "Juegos de cartas en formato pequeño."]
                    ]]
                ]
            ],
            [
                "id_brand" => 3,
                "categories" => [
                    ["id_category" => 1, "products" => [
                        ["name" => "Anillos de fantasía", "description" => "Anillos llamativos y de diseño único."],
                        ["name" => "Diademas y pinzas para el pelo", "description" => "Accesorios para el pelo con estilo."]
                    ]],
                    ["id_category" => 3, "products" => [
                        ["name" => "Gomas de borrar con formas", "description" => "Gomas de borrar con divertidas formas."],
                        ["name" => "Pegamentos con brillantina", "description" => "Pegamentos con brillo para manualidades."]
                    ]],
                    ["id_category" => 4, "products" => [
                        ["name" => "Chapas y pines", "description" => "Chapas y pines decorativos para la ropa y mochilas."]
                    ]]
                ]
            ],
            [
                "id_brand" => 4,
                "categories" => [
                    ["id_category" => 3, "products" => [
                        ["name" => "Sacapuntas con diseño", "description" => "Sacapuntas con diseños creativos."],
                        ["name" => "Limas de uñas decorativas", "description" => "Limas de uñas con decoraciones atractivas."]
                    ]],
                    ["id_category" => 4, "products" => [
                        ["name" => "Espejos de bolsillo", "description" => "Pequeños espejos portátiles con bonitos diseños."],
                        ["name" => "Cuentas para hacer pulseras", "description" => "Cuentas de colores para crear pulseras."]
                    ]],
                    ["id_category" => 5, "products" => [
                        ["name" => "Linternas pequeñas", "description" => "Pequeñas linternas prácticas para llevar a cualquier lado."],
                        ["name" => "Mini herramientas (destornilladores pequeños, navajas de bolsillo)", "description" => "Conjunto de mini herramientas útiles para el día a día."]
                    ]]
                ]
            ],
            [
                "id_brand" => 5,
                "categories" => [
                    ["id_category" => 1, "products" => [
                        ["name" => "Llaveros", "description" => "Llaveros decorativos y funcionales."]
                    ]],
                    ["id_category" => 4, "products" => [
                        ["name" => "Broches decorativos", "description" => "Broches para decorar ropa y accesorios."],
                        ["name" => "Cajas de música pequeñas", "description" => "Cajas de música con melodías encantadoras."]
                    ]],
                    ["id_category" => 5, "products" => [
                        ["name" => "Candados con combinación", "description" => "Candados seguros con combinación numérica."],
                        ["name" => "Monederos de tela o plástico", "description" => "Monederos prácticos y de diseño atractivo."],
                        ["name" => "Tatús temporales", "description" => "Tatuajes temporales para diversión."]
                    ]],
                    ["id_category" => 3, "products" => [
                        ["name" => "Tarjetas de felicitación", "description" => "Tarjetas para diversas ocasiones especiales."],
                        ["name" => "Puzzles y rompecabezas pequeños", "description" => "Puzzles pequeños para entretenerse y ejercitar la mente."]
                    ]]
                ]
            ]
        ];
        
        foreach($marcas as $marca)
            Brand::create($marca);
        foreach($categorias as $categoria)
            Category::create($categoria);
        foreach($productos as $marca){
            $marca = (object)$marca;
            foreach ($marca->categories as $key => $category) {
                $category = (object)$category;
                foreach ($category->products as $key => $producto) {
                    $value = rand(1000, 100000);
                    $cost = rand(500, ($value - 100));
                    $stock = rand(10, 50);
                    $discount = [0, 0.05, 0.10, 0.15][array_rand([0, 0.05, 0.10, 0.15])];
                    $tax = (rand(0, 1) == 0) ? 0 : 0.19;
                    $qualification = rand(0, 5);
                    $data = [
                        'id_category'   => $category->id_category,
                        'id_brand'      => $marca->id_brand,
                        'name'          => $producto["name"],
                        'description'   => $producto["description"],
                        'stock'         => $stock,
                        'value'         => $value,
                        'cost'          => $cost,
                        'discount'      => $discount,
                        'tax'           => $tax,
                        "qualification" => $qualification
                    ];
                    Products::create($data);
                }
            }
        }

        // for ($i = 1; $i <= 100; $i++) {
        //     $value = rand(1000, 20000);
        //     $cost = rand(500, ($value - 100));
        //     $discount = 0;
        //     $random_number = rand(1, 100); // Genera un número aleatorio entre 1 y 100
        //     if ($random_number <= 30) 
        //         $discount = 0.05; // 30% de probabilidad de que haya impuestos
        //     elseif ($random_number <= 70) 
        //         $discount = 0.10; // 40% de probabilidad de que no haya impuestos
        //     elseif (rand(0, 1) !== 0)
        //         $discotun = 0.15; // 30% de probabilidad de que haya impuestos (si no se cumplen los casos anteriores)
        //     $tax = rand(0, 1) === 0 ? 0 : 0.19;

        //     $data = [
        //         'id_category'   => rand(1, 5),
        //         'id_brand'      => rand(1, 5),
        //         'name'          => "Producto {$i}",
        //         'description'   => "Descripción {$i}",
        //         'value'         => $value,
        //         'cost'          => $cost,
        //         'discount'      => $discount,
        //         'tax'           => $tax
        //     ];

        //     // Crear un nuevo registro utilizando el método estático create
        //     Products::create($data);
        // }
    }
}
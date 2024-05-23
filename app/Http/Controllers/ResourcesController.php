<?php

namespace App\Http\Controllers;
use App\Models\Brand;
use App\Models\Category;
use App\Models\Products;

class ResourcesController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    public function index(){
        $brands = Brand::all();
        $categories = Category::all();
        $valorMaximo = (int)Products::max('value');
        $valorMinimo = (int)Products::min('value');

        $data = [
            // 'data'    => $products->items(),
            'brands'        => $brands,
            'categories'    => $categories,
            'min'           => $valorMinimo,
            'max'           => $valorMaximo
        ];

        return response()->json($data, 200);
    }
}

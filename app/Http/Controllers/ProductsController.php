<?php

namespace App\Http\Controllers;
use App\Models\Products;
use Illuminate\Http\Request;

class ProductsController extends Controller
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

    public function index(Request $request)
    {
        $draw = $request->input('draw', 1);
        $length = $request->input('length', 10);
        $start = $request->input('start', 1);
        $page = $request->input('page', ceil(($start - 1) / $length + 1));
        $req = $request->all();
        $filter = [];
        if(isset($req['discount']))
          $filter[] = ['discount', ">", 0];
        if(isset($req['id_category']))
          $filter[] = ['id_category', "=", $req['id_category']];
        if(isset($req['id_brand']))
          $filter[] = ['id_brand', "=", $req['id_brand']];
        if (isset($req['min_value']))
          $filter[] = ['value', ">=", $req['min_value']];
        if (isset($req['max_value']))
          $filter[] = ['value', "<=", $req['max_value']];
      
        $products = Products::where($filter)->paginate($length, ['*'], 'page', $page);
        foreach ($products as $key => $product) {
          $product->category;
          $product->brand;
        }


        $data = [
          // 'data'    => $products->items(),
          'page'    => $page,
          'length'  => $length,
          'total'   => $products->total(),
          'draw'    => $draw,
          'req'     => $request->all()['page'],
          'data'    => $products,
        ];

        return response()->json($data, 200);
    }

    //
}

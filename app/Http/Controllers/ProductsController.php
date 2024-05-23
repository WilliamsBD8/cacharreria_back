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
        try {
            $req = (object) $request->all();
            $draw = $req->draw ?? 1;
            $length = $req->length ?? 10;
            $start = $req->start ?? 1;
            $page = $req->page ??  ceil(($start - 1) / $length + 1);

            // $length = $request->input('length', 10);
            // $start = $request->input('start', 1);
            // $page = $request->input('page', ceil(($start - 1) / $length + 1));
            $filter = [];
            if(isset($req->discount))
                $filter[] = ['discount', ">", 0];
            if(isset($req->id))
                $filter[] = ['id_product', "!=", $req->id];
            if (isset($req->min_value))
                $filter[] = ['value', ">=", $req->min_value];
            if (isset($req->max_value))
                $filter[] = ['value', "<=", $req->max_value];

            $products = Products::where($filter);

            if(isset($req->id_category) && !empty($req->id_category))
                $products->whereIn('id_category', $req->id_category);

            if(isset($req->id_brand) && !empty($req->id_brand))
                $products->whereIn('id_brand', $req->id_brand);

            $products = $products->paginate($length, ['*'], 'page', $page);
            foreach ($products as $key => $product) {
                $product->category;
                $product->brand;
                $product->photos = $product->photos ?: [];
            }

            $data = [
                // 'data'    => $products->items(),
                'page'    => $page,
                'length'  => $length,
                'total'   => $products->total(),
                'draw'    => $draw,
                'req'     => $request->all(),
                'data'    => $products,
            ];

            return response()->json($data, 200);
        } catch (\Exception $e) {
            // Registrar el error para su posterior revisión
    
            // Retornar una respuesta JSON con el mensaje de error
            return response()->json([
                'message' => 'Ocurrió un error al procesar su solicitud.',
                'error'   => $e->getMessage()
            ], 500);
        }
    }

    public function show(Request $request){
        $req = (object)$request->all();
        $product = Products::findOrFail($req->id);
        $product->category;
        $product->brand;
        $product->photos = $product->photos ?: [];
        return response()->json($product, 200);
    }

    //
}

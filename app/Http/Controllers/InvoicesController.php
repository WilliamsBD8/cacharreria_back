<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;

class InvoiceController extends Controller
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

    public function created(Request $request){
        return response()->json(['data' => $request]);
    }
}

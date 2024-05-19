<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
// use Illuminate\Support\Facades\Auth;
// use Tymon\JWTAuth\Facades\JWTAuth;
// use Tymon\JWTAuth\Exceptions\JWTException;

class AuthController extends Controller
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

    public function login(Request $request){
      $credentials = $request->only('username', 'password');
      $user = User::where('username', $credentials['username'])
                 ->orWhere('email', $credentials['username'])
                 ->first();

      if ($user && password_verify($credentials['password'], $user->password)) 
          return response()->json(['message' => 'Login successful', 'user' => $user], 200);
      else 
          return response()->json(['error' => 'Unauthorized', 'data' => $credentials], 401);
    }
}

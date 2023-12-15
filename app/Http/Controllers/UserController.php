<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UserController extends Controller
{
    public function saveCount(Request $request)
    {
        $user = Auth::user();
        if ($user) {
            $updatedCount = $request->input('updatedCount');
            if ($updatedCount !== null) {
                $user->count += $updatedCount;
                $user->save();
                return response()->json(['count' => $user->count], 200);
            } else {
                return response()->json(['error' => 'Updated count is null'], 400);
            }
        } else {
            return response()->json(['error' => 'User not authenticated'], 401);
        }
    }

    public function getCount()
    {
        $user = Auth::user();
        if ($user) {
            return response()->json(['count' => $user->count]);
        } else {
            return response()->json(['error' => 'User not authenticated'], 401);
        }
    }

    // // used to create a token to authenticate the user and test the API endpoints in Postman
    // public function login(Request $request)
    // {
    //     $credentials = $request->only('email', 'password');

    //     if (Auth::attempt($credentials)) {
    //         $user = Auth::user();

    //         $token = $user->createToken('MyApp')->plainTextToken;
    //         return response()->json(['token' => $token], 200);
    //     } else {
    //         return response()->json(['error' => 'Invalid credentials'], 401);
    //     }
    // }
}

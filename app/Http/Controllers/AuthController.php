<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class AuthController extends Controller
{
    /**
     * Api for Customer signup
     *
     * @return json
     */
    public function signup(Request $request)
    {
        // Validate the request data
        $validator = Validator::make($request->all(), [
            'name' => 'required|max:255',
            'email' => 'required|email|unique:users|max:255',
            'password' => 'required|min:8',
        ]);
        if ($validator->fails()) {
            return response()->json(['status' => 'failed', 'message' => $validator->errors()], 422);
        }
        $validatedData = $validator->validated();
        $data = [
            'name' => $validatedData['name'],
            'email' => $validatedData['email'],
            'password' => Hash::make($validatedData['password']),
        ];
        // Create the customer
        $customer = User::create($data);
        return response(
            [
                'status' => 'success',
                'message' => 'The account has been successfully registered.',
                'customer' => $customer,
            ],
            201,
        );
    }

    /**
     * Api for Customer login
     *
     * @return json
     */
    public function signin(Request $request)
    {
        // Validate the request data
        $validator = Validator::make($request->all(), [
            'email' => 'required|exists:users|max:191',
            'password' => 'required|min:6',
        ]);
        if ($validator->fails()) {
            return response()->json(['status' => 'failed', 'message' => $validator->errors()], 422);
        }

        $validatedData = $validator->validated();

        // Attempt to authenticate the user
        if (!Auth::attempt($validatedData)) {
            return response()->json(['status' => 'failed', 'message' => 'Invalid login credentials'], 422);
        }

        // Get the authenticated user
        $customer = $request->user();

        // Generate a token for the user
        $token = $customer->createToken('auth-token')->plainTextToken;

        // Return the token
        return response(
            [
                'status' => 'success',
                'message' => 'Login successful',
                'token' => $token,
                'customer' => $customer,
            ],
            201,
        );
    }

    /**
     * Api for Customer signout
     *
     * @return json
     */
    public function signout(Request $request)
    {
        if ($request->User()) {
            $request->User()->tokens()->delete();
            return response([
                'status' => 'success',
                'message' => 'Logged out successfully',
            ]);
        }
        return response(
            [
                'status' => 'failed',
                'message' => 'User tokens do not match',
            ],
            422,
        );
    }
}

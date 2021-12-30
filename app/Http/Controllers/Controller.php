<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function ApiResponse($data, $code)
    {
        $isSuccess = true;
        $isSuccess = $code >= 400 ? false : true;

        $response = [
            "is_success" => $isSuccess,
            "code" => $code,
            "data" => $data
        ];
        return response()->json($response, $code);
    }
}

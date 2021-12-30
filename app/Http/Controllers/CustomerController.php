<?php

namespace App\Http\Controllers;

use App\Customer;
use App\Repositories\CustomerRepository;
use Illuminate\Http\Request;

class CustomerController extends Controller
{
    private CustomerRepository $customerRepository;

    public function __construct(CustomerRepository $customerRepo)
    {
        $this->customerRepository = $customerRepo;
    }
    public function store(Request $request)
    {
        $customer = $this->customerRepository->create($request->all());
        return $this->ApiResponse($customer, 200);
    }

    public function update($customer_id, $stakeholder_id)
    {
        $update = $this->customerRepository->update($customer_id, $stakeholder_id);
        return $this->ApiResponse($update, 200);
    }
}

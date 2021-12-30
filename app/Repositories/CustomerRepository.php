<?php

namespace App\Repositories;

use App\Customer;
use App\Interfaces\CustomerInterfaces;

class CustomerRepository implements CustomerInterfaces
{
    public function getAllCustomer()
    {
        return Customer::all();
    }

    public function create(array $customer)
    {
        return Customer::create($customer);
    }

    public function update($id, $stakeholderId)
    {
        return Customer::where('id', $id)->update(array("stakeholder_id" => $stakeholderId));
    }

    public function getCustomerStakeholderNull()
    {
        return Customer::whereNull('stakeholder_id')->skip(0)->take(1);
    }
}

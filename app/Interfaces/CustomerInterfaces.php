<?php

namespace App\Interfaces;

interface CustomerInterfaces
{
    public function getAllCustomer();
    public function create(array $customer);
    public function update($id, $stakeholderId);
    public function getCustomerStakeholderNull();
}

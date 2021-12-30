<?php

namespace App\Repositories;

use App\Interfaces\StakeholderInterfaces;
use App\Stakeholder;

class StakeholderRepository implements StakeholderInterfaces
{
    public function getAllStakeHolder()
    {
        return Stakeholder::all();
    }

    public function getStakeholder($id, $name)
    {
        return Stakeholder::where("id", $id)->where('name', $name);
    }
}

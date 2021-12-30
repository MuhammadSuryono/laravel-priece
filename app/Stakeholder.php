<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Stakeholder extends Model
{
    protected $fillable = ['name', 'email', 'address', 'total_point', 'total_buy', 'phone'];
}

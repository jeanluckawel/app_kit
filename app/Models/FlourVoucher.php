<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class FlourVoucher extends Model
{
    //

    protected $fillable = [
        'voucher_number', 'employee_id', 'product', 'pickup_point', 'month', 'due_date', 'redeemed', 'redeemed_at',
    ];
}

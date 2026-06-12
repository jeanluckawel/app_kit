<?php

namespace App\Http\Controllers;

use App\Models\Employee\Employee;
use App\Models\FlourVoucher;
use Illuminate\Http\Request;

class FlourVoucherController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $vouchers = FlourVoucher::latest()->get();

        $redeemedVouchers = FlourVoucher::where('redeemed', true)
            ->latest()
            ->get();

        $pendingVouchers = FlourVoucher::where('redeemed', false)
            ->latest()
            ->get();

        return view('flour_voucher.index', compact(
            'vouchers',
            'redeemedVouchers',
            'pendingVouchers'
        ));
    }

    public function generate(Request $request)
    {
        $request->validate([
            'product' => 'required',
            'pickup_point' => 'required',
            'month' => 'required',
            'due_date' => 'required|date',
        ]);

        $employees = Employee::all();

        $created = 0;

        foreach ($employees as $employee) {

            $month = $request->month . '-01';

            $exists = FlourVoucher::where('employee_id', $employee->employee_id)
                ->whereDate('month', $month)
                ->exists();

            if (!$exists) {

                $lastId = (FlourVoucher::max('id') ?? 0) + 1;

                $voucherNumber = 'FV-' .
                    now()->year .
                    '-' .
                    str_pad($lastId, 5, '0', STR_PAD_LEFT);

                FlourVoucher::create([
                    'voucher_number' => $voucherNumber,
                    'employee_id' => $employee->employee_id,
                    'product' => $request->product,
                    'pickup_point' => $request->pickup_point,
                    'month' => $month,
                    'due_date' => $request->due_date,
                    'redeemed' => false,
                ]);

                $created++;
            }
        }

        return redirect()
            ->back()
            ->with(
                'success',
                "{$created} vouchers generated successfully."
            );
    }

    public function show(FlourVoucher $voucher)
    {
//        return view(
//            'flour_voucher.show',
//            compact('voucher')
//        );
    }

    public function redeem(FlourVoucher $voucher)
    {
        if ($voucher->redeemed) {

            return back()->with(
                'error',
                'Voucher already redeemed.'
            );
        }

        $voucher->update([
            'redeemed' => true,
            'redeemed_at' => now(),
        ]);

        return back()->with(
            'success',
            'Voucher redeemed successfully.'
        );
    }

    public function destroy(FlourVoucher $voucher)
    {
        $voucher->delete();

        return back()->with(
            'success',
            'Voucher deleted successfully.'
        );
    }

}

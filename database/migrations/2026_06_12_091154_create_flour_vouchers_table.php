<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('flour_vouchers', function (Blueprint $table) {
            $table->id();

            $table->string('voucher_number')->unique();

            $table->string('employee_id');

            $table->string('product');

            $table->string('pickup_point');

            $table->date('month');

            $table->date('due_date');

            $table->boolean('redeemed')->default(false);

            $table->timestamp('redeemed_at')->nullable();

            $table->timestamps();

            $table->unique(['employee_id', 'month']);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('flour_vouchers');
    }
};

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
        Schema::table('users', function (Blueprint $table) {
            //
            $table->string('employee_id')
                ->nullable()
                ->after('id');

            $table->boolean('must_change_password')
                ->default(true)
                ->after('password');

            $table->string('role')
                ->default('employee')
                ->after('must_change_password');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('users', function (Blueprint $table) {
            //
            $table->dropColumn([
                'employee_id',
                'must_change_password',
                'role'
            ]);
        });
    }
};

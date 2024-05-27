<?php

namespace App\Http\Actions;

use App\Models\jobs_offers;

class JobOffersWithAllData
{
    public static function get()
    {
        return jobs_offers::query()->with(['skills'])->withCount('applicants')
            ->orderBy('id','DESC');
    }
}

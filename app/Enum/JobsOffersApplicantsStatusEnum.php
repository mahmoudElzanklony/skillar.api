<?php

namespace App\Enum;

enum JobsOffersApplicantsStatusEnum:string
{
    case pending = 'pending';
    case consideration = 'consideration';
    case top_best = 'top_best';
    case rejected = 'rejected';
}


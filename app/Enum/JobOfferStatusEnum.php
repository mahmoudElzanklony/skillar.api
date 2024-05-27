<?php

namespace App\Enum;

enum JobOfferStatusEnum:string
{
    case pending = 'pending';
    case closed = 'closed';
    case hired = 'hired';
}

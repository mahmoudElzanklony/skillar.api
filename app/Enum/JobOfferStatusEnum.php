<?php

namespace App\Enum;

enum JobOfferStatusEnum:string
{
    case open = 'open';
    case closed = 'closed';
    case hired = 'hired';
}

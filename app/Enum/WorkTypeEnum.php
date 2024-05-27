<?php

namespace App\Enum;

enum WorkTypeEnum:string
{
    case office = 'office';
    case remotely = 'remotely';
    case negotiable = 'negotiable';
}

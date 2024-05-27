<?php

namespace App\Enum;

enum WorkTimeEnum:string
{
    case full_time = 'full_time';
    case part_time = 'part_time';
    case negotiable = 'negotiable';
}

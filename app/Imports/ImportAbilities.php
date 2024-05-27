<?php

namespace App\Imports;

use App\Models\abilities;
use App\Models\interests;
use App\Models\job_abilities;
use App\Models\job_interests;
use App\Models\job_knowledge;
use App\Models\job_skills;
use App\Models\job_tasks;
use App\Models\job_work_activities;
use App\Models\job_work_contexts;
use App\Models\job_work_values;
use App\Models\jobs;
use App\Models\knowledge;
use App\Models\skills;
use App\Models\tasks;
use App\Models\work_activities;
use App\Models\work_contexts;
use App\Models\work_values;
use Illuminate\Database\Eloquent\Model;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Maatwebsite\Excel\Concerns\WithChunkReading;
use Illuminate\Contracts\Queue\ShouldQueue;
use Maatwebsite\Excel\Concerns\ToCollection;
use Illuminate\Support\Collection;
use function GuzzleHttp\Promise\task;

class ImportAbilities implements ToModel , WithHeadingRow , WithChunkReading ,ShouldQueue , ToCollection
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */

    public function collection(Collection $rows)
    {
        // Split the rows into multiple files
        foreach($rows as $row) {

            if ($row['job_code'] != '') {
                $job = jobs::query()->where('code', '=', $row['job_code'])->first();
                $skill = skills::query()->where('code','=',$row['skill_code'])->first();
                if ($job != null && $skill != null) {
                    job_skills::query()->create([
                        'job_id' => $job->id,
                        'skill_id' => $skill->id,
                        'importance' =>$row['importance'],
                    ]);
                }
            }


        }

    }

    public function model(array $row)
    {

    }

    public function chunkSize(): int
    {
        return 500;
    }

    public function batchSize(): int
    {
        return 500;
    }

}

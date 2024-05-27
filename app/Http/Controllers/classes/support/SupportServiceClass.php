<?php

namespace App\Http\Controllers\classes\support;

use App\Http\Controllers\Controller;
use App\Http\Requests\supportFormRequest;
use App\Http\traits\messages;
use App\Models\support;
use Illuminate\Http\Request;

class SupportServiceClass extends Controller
{
    //
    public function send(supportFormRequest $supportFormRequest){
        $validated = $supportFormRequest->validated();
        support::query()->create($validated);
        return messages::success_output(trans('messages.sent_successfully'));
    }
}

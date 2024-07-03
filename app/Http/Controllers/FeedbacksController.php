<?php

namespace App\Http\Controllers;

use App\Enum\FeedbackStatusEnum;
use App\Http\Requests\employeeFeedbackFormRequest;
use App\Http\Resources\EmployeeFeedbackResource;
use App\Models\employee_feedbacks;
use Illuminate\Http\Request;
use App\Http\traits\messages;
class FeedbacksController extends Controller
{
    //
    use messages;
    public function index()
    {
        $data = employee_feedbacks::query()
            ->where('receiver_id','=',request('id'))
            ->with('sender.image')
            ->when(auth()->id() != request('id'),
                fn($query) => $query->where('status','=',FeedbackStatusEnum::approval))
            ->orderBy('id','DESC')->get();
        return EmployeeFeedbackResource::collection($data);
    }

    public function update_status()
    {
        employee_feedbacks::query()->find(request('id'))
            ->update(['status' => FeedbackStatusEnum::approval->value]);
        return $this->success_output(trans('messages.feedback_will_appear_in_your_profile'));
    }

    public function make_feedback(employeeFeedbackFormRequest $request)
    {
        $data = $request->validated();
        $data['sender_id'] = auth()->id();
        $data['status'] = FeedbackStatusEnum::pending->value;
        $output = employee_feedbacks::query()->updateOrCreate([
            'id'=>$data['id']  ?? null
        ],$data);
        return $this->success_output(trans('messages.saved_successfully'),$output);
    }
}

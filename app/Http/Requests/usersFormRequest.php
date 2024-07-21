<?php

namespace App\Http\Requests;

use App\Rules\matchOldPasssword;
use Illuminate\Foundation\Http\FormRequest;

class usersFormRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */

    public function login(){
        return [
            'email'=>'required|email|max:191',
            'password'=>'required|min:6|max:191',
        ];
    }

    public function register(){
        return [
            //
            'country_id'=>'required|integer|exists:countries,id',
            'username'=>'required|max:191',
            'email'=>'required|email|max:191|unique:users,email',
            'password'=>'required|min:7|confirmed|max:191',
            'phone'=>'required|min:7',
            'address'=>'nullable|max:191',
            'image'=>'filled|image|mimes:jpg,jpeg,png,gif',
        ];
    }
    public function update_admin(){
        return [
            //
            'country_id'=>'required|integer|exists:countries,id',
            'username'=>'required|max:191',
            'email'=>'required|email|max:191|unique:users,email,'.request('id'),
            'password'=>'nullable|min:7|max:191',
            'phone'=>'required|min:7',
            'address'=>'nullable|max:191',
            'image'=>'nullable|image|mimes:jpg,jpeg,png,gif',
        ];
    }

    public function update_email_image(){
        return [
            //
            'email'=>'required|max:191|email|unique:users,email,'.auth()->user()->id,
            'profile_picture'=>'nullable|mimes:jpg,jpeg,png,gif',
        ];
    }

    public function update_password(){
        return [
            'current_password'=>['required',new matchOldPasssword()],
            'password'=>'required|confirmed|min:7|max:191',
        ];
    }

    public function reset_psasword(){
        return [
            'password'=>'required|confirmed|min:7|max:191',
        ];
    }

    public function update_personal_data(){
        return [
            'full_name'=>'required|max:191',
            'username'=>'required|max:191',
            'phone'=>'required|min:7',
        ];
    }

    public function update_company_data(){
        return [
            'bio'=>'required',
            'image'=>'nullable|mimes:jpg,jpeg,png,gif',
        ];
    }

    public function update_scondary_data(){
        return [
            'age'=>'required',
            'gender'=>'required',
            'marital_status'=>'required',
            'education'=>'required',
            'industry'=>'required',
            'position'=>'required',
        ];
    }

    public function update_feedback(){
        return [
            'stars'=>'required',
            'feedback'=>'required',
        ];
    }

    public function personal_info(){
        return [
            //
            'id'=>'filled',
            'username'=>'required|max:191',
            'email'=>'required|email|max:191|unique:users,email,'.auth()->id(),
            'password'=>'nullable|min:7|max:191',
            'phone'=>'filled|min:7',
            'address'=>'filled|max:191',
            'image'=>'filled|image|mimes:jpg,jpeg,png,gif',
        ];
    }

    public function rules()
    {
        if(str_contains($this->getRequestUri(),'/login')){
            return $this->login();
        }else if(str_contains($this->getRequestUri() , '/register')){
            return $this->register();
        }else if(str_contains($this->getRequestUri() , '/users')){
            return $this->update_admin();
        }else if(str_contains($this->getRequestUri() , '/profile/update-email-image')){
            return $this->update_email_image();
        }else if(str_contains($this->getRequestUri() , '/profile/update-password')){
            return $this->update_password();
        }else if(str_contains($this->getRequestUri() , '/newpass')){
            return $this->reset_psasword();
        }else if(str_contains($this->getRequestUri() , '/update-personal')){
            return $this->personal_info();
        }else if(str_contains($this->getRequestUri() , '/profile/update-personal-data')){
            return $this->update_personal_data();
        }else if(str_contains($this->getRequestUri() , '/profile/update-company-data')){
            return $this->update_company_data();
        }else if(str_contains($this->getRequestUri() , '/profile/update-secondary-data')){
            return $this->update_scondary_data();
        }else if(str_contains($this->getRequestUri() , '/profile/update-feedback')){
            return $this->update_feedback();
        }else if(str_contains($this->getRequestUri() , '/dashboard')){
            return $this->update_admin();
        }
    }

    public function attributes()
    {
        return [
            'country_id'=>trans('keywords.country'),
            'username'=>trans('keywords.username'),
            'full_name'=>trans('keywords.full_name'),
            'whatapp_status'=>trans('keywords.whatapp_status'),
            'contact_with_email'=>trans('keywords.contact_me_by_email'),
            'email'=>trans('keywords.email'),
            'password'=>trans('keywords.password'),
            'current_password'=>trans('keywords.current_password'),
            'address'=>trans('keywords.address'),
            'image'=>trans('keywords.image'),
            'profile_picture'=>trans('keywords.image'),
            'bio'=>trans('keywords.company_bio'),
            'age'=>trans('keywords.age'),
            'gender'=>trans('keywords.gender'),
            'marital_status'=>trans('keywords.marital_status'),
            'education'=>trans('keywords.education'),
            'industry'=>trans('keywords.industry'),
            'position'=>trans('keywords.position'),
            'block'=>trans('keywords.block'),
            'auto_publish'=>trans('keywords.auto_publish'),
            'stars'=>trans('keywords.select_stars'),
            'feedback'=>trans('keywords.feedback'),
        ];
    }

    public function messages()
    {
        return [

        ];
    }
}

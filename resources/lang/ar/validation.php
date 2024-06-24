<?php
return [
    'required' => ' :attribute  حقل ادخال مطلوب',
    'filled' => ' :attribute  لابد ان يحتوي علي قيمة',
    'confirmed' => ':attribute غير متوافقتان',
    'unique' => ':attribute مأخوذ بالفعل',
    'exists' => ':attribute غير موجود',
    'distinct' => ':attribute تم اخذ منها قيمتان متكررتان',
    'file' => ' :attribute لابد ان يكون ملف',
    'image' => ':attribute لابد ان يكون صورة',
    'mimes' => ':attribute لابد ان يكون امتداد الملف :values.',
    'date' => ' :attribute لابد ان يكون تاريخ',
    'integer' => ' :attribute لابد ان يكون عدد',
    'digits' => ' :attribute لابد ان يكون :digits ارقام.',
    'email' => ' :attribute لابد ان يكون بريد الكتروني صحيح',
    'not_current_password'=>'هذه ليس كلمة المرور الخاصة بك',
    'in' => ':attribute غير موجود من ضمن الاختيارات المتاحة',


    'min' => [
        'numeric' => ' :attribute لابد ان يكون علي الاقل :min.',
        'file' => ':attribute لابد ان يكون علي الاقل :min كيلو بايت.',
        'string' => ' :attribute لابد ان يكون علي الاقل :min احرف.',
        'array' => ' :attribute لابد ان يكون علي الاقل :min عنصر.',
    ],
    'max' => [
        'file' => ' :attribute لابد الا تتعدي مساحته عن  :max كيلو بايت.',
    ],

];

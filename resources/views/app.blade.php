<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta name="google-site-verification" content="2SuwWd8cXOGWZCp38Kt2CqB0i5Xt6zPQbDbQdBMBoVU" />
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>@if(array_key_exists('head_data',$page['props'])){{  $page['props']['head_data']['title'] }}@else reklamlarım @endif</title>
    <meta name="description" content="{{  array_key_exists('head_data',$page['props']) ? $page['props']['head_data']['description']:'reklamlarım كل ما تود البحث عنه من تأجير وبيع اي شئ  ستجده هنا بأفضل الاسعار'  }}">
    <meta name="keywords" content="{{  array_key_exists('head_data',$page['props']) ? $page['props']['head_data']['keywords']:'reklamlarım  , تأجير وبيع كل ما تمتلك عن طريق الانترنت , افضل مواقع شراء العقارات'  }}">
    <meta property="og:type" content="website">
    <meta property="og:url" content="">
    <meta property="og:title" content="reklamlarım">
    <meta property="og:image" content="https://xn--reklamlarm-5ub.com/images/icon.png">
    <meta property="og:description" content=" موقع متخصص فى بيع عقارات سيارات اجهزه واي شئ تمتلكه للبيع او التأجير بأفضل الاسعار ">

    <script src="https://code.jquery.com/jquery-3.2.1.min.js" ></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.nicescroll/3.7.6/jquery.nicescroll.min.js" defer></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" defer integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" defer integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


    <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/buttons/2.0.1/js/dataTables.buttons.min.js"></script>
    <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/buttons/2.0.1/js/buttons.html5.min.js"></script>
    <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/buttons/2.0.1/js/buttons.print.min.js"></script>
    <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/buttons/2.0.1/js/buttons.print.min.js"></script>



    <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300&display=swap" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Cairo' rel='stylesheet'>

    <link href="{{ mix('/css/app.css') }}" rel="stylesheet" />
    @if(session()->get('lang') == 'en')
        <link href="{{ mix('/css/english.css') }}" rel="stylesheet" />
    @elseif(session()->get('lang') == 'tu')
        <link href="{{ mix('/css/turkish.css') }}" rel="stylesheet" />
    @else
        <link href="{{ mix('/css/arabic.css') }}" rel="stylesheet" />
    @endif
    <link rel="icon" href="/images/icon.png" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/socket.io/1.7.3/socket.io.min.js"></script>




    <script src="{{ mix('/js/app.js') }}" defer></script>
    <style>
        /*body{
            overflow: hidden;
        }
        .content > div:first-of-type , .content > section:first-of-type{
            height: calc(100vh);
            overflow: auto;
            direction: ltr;
        }*/
        #map{
            height: 400px;
            margin-top: 15px;
        }
    </style>
</head>
<body class="{{ session()->get('lang') == 'tu' ? 'en': session()->get('lang') }}">
<!--    <span class="up-page"><i class="ri-arrow-up-line"></i></span>-->



<div class="content">
    @inertia
</div>
<script name="map"
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDU_mct20AyfPwpVa1iWQu4MoOo9ErRfi0&v=weekly&language=ar&libraries=places"
    defer
></script>



</body>
</html>


<script
    src="https://eu-test.oppwa.com/v1/paymentWidgets.js?checkoutId={{ $res['id'] }}">
</script>
<form action="{{ url('/checkout') }}" class="paymentWidgets" data-brands="VISA MASTER"></form>

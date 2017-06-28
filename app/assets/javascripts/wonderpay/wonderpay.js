$(document).ready(function(){
  Iugu.setTestMode(true);

  Iugu.setAccountID("COLOCAR SEU ACCOUNT ID AQUI");

  $('#payment-form').submit(function (evt) {
    var form = $(this);

    var tokenResponseHandler = function (data) {
      if (data.errors) {
        alert("Erro salvando cartão: " + JSON.stringify(data.errors));
      } else {
        $("#token").val(data.id);
        form.get(0).submit();
      }
    }

    Iugu.createPaymentToken(this, tokenResponseHandler);
    return false;
  });
});

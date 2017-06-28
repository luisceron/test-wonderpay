class PaymentController < ApplicationController
  skip_before_action :verify_authenticity_token
  skip_after_action :verify_authorized, :verify_policy_scoped

  def pa
    Iugu.api_key = "SUA API KEY"

    param = (params[:token].empty? ? "method" : "token").to_sym

    charge = Iugu::Charge.create({
      param => params[param],
      email: "EMAIL",
      items: [
        {
          description: "Item 1",
          quantity: "1",
          price_cents: "5990"
        },
        {
          description: "Item 2",
          quantity: "1",
          price_cents: "4000"
        }
      ]
    })






    token = "ISTOSERUMTOKEN"

    if charge and charge.success
    if true && params[:path]
      # render "thanks"
      redirect_to "#{params[:path]}?token=#{token}", notice: "Pagamento efetuado com sucesso"
    else
      # render "failed"
      redirect_to root_path, alert: "Pagamento não efetuado com sucesso"
    end
  end
end

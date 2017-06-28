class PaymentController < ApplicationController
  def pay
debugger
    # Iugu.api_key = "SUA API KEY"

    # param = (params[:token].empty? ? "method" : "token").to_sym

    # charge = Iugu::Charge.create({
    #   param => params[param],
    #   email: "EMAIL",
    #   items: [
    #     {
    #       description: "Item 1",
    #       quantity: "1",
    #       price_cents: "5990"
    #     },
    #     {
    #       description: "Item 2",
    #       quantity: "1",
    #       price_cents: "4000"
    #     }
    #   ]
    # })

    # if charge and charge.success
    if true
      # render "thanks"
      redirect_to root_path
    else
      render "failed"
    end
  end
end

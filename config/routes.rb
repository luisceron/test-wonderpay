# Wonderpay::Engine.routes.draw do
# end

Rails.application.routes.draw do
  scope '/wonderpay' do
    post 'payment/pay'
  end
end

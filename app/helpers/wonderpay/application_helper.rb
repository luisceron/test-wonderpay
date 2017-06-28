module Wonderpay
  module ApplicationHelper
    def iugu_payment(path)
      render "payment", locals: {path: path}
    end
  end
end

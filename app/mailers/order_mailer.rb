class OrderMailer < ApplicationMailer
  def order_mail(order_params)
    @order_params = order_params.deep_symbolize_keys
    mail(to: %w(rustkoln@yandex.ru alife4ever@mail.ru Pjkjnj5588@mail.ru Uakievkrim@gmail.com), from: 'rustkoln@yandex.ru', subject: 'New Order')
  end
end

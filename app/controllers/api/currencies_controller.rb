module Api
  class CurrenciesController < ApplicationController
    def currency_list
      render json: Currency.all.as_json
    end

    def currency_reserves
      render json: Currency.includes(:reserve).pluck(:name, :code, :currency_reserve).as_json
    end

    def current_course
      if params['sell_currency'].present? && params['buy_currency'].present?
        currencies = CurrencyUnit.new(params['sell_currency'], params['buy_currency'])

        render json: {
          sell_course: currencies.fetch_course,
          sell_value:  currencies.sell_currency_value,
          round_value: currencies.buy_currency_round
        }
      end
    end

    def confirm_order
      OrderMailer.order_mail(order_params.to_hash).deliver_later
    end

    private

    def order_params
      params.require(:params).permit(:from, :from_value, :to, :to_value, :from_pocket, :to_pocket, :email)
    end
  end
end

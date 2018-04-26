class CurrencyUnit
  attr_accessor :sell_currency, :buy_currency

  def initialize(sell_currency, buy_currency)
    @sell_currency = sell_currency == 'RUR' ? 'RUB' : sell_currency
    @buy_currency  = buy_currency  == 'RUR' ? 'RUB' : buy_currency
  end

  def fetch_course
    JSON.parse(
      HTTParty.get(
        "https://min-api.cryptocompare.com/data/pricemulti?fsyms=#{sell_currency}&tsyms=#{buy_currency}"
      ).body
    )[sell_currency][buy_currency]
  end

  def sell_currency_value
    case sell_currency
    when 'BTC'
      0.001
    when 'LTC'
      0.01
    when 'XRP'
      10
    when 'RUB'
      100
    else
      0
    end
  end

  def buy_currency_round
    case buy_currency
    when 'BTC'
      6
    when 'LTC', 'XRP'
      4
    when 'RUB'
      2
    else
      0
    end
  end
end
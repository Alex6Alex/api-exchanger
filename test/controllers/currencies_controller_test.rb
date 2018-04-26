require 'test_helper'

class CurrenciesControllerTest < ActionDispatch::IntegrationTest
  test 'should get currency_list' do
    get currencies_currency_list_url
    assert_response :success
  end
end

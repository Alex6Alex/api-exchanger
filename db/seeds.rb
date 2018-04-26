Currency.create(name: 'Bitcoin', code: 'BTC', wallet_example: '1BvBMSEYstWetqTFn5Au4m4GFg7xJaNVN2')
Currency.create(name: 'Litecoin', code: 'LTC', wallet_example: 'L02hA45CD21PXHEu6U9mKOzvCQxiMCmjYH')
Currency.create(name: 'Ripple', code: 'XRP', wallet_example: 'rG1QQv2nh2gr7RCZ1P8YYcBUKCCN633jCn')
Currency.create(name: 'Qiwi', code: 'RUR', wallet_example: '+79121234567')

Reserve.create(currency_id: Currency.find_by(name: 'Bitcoin').id, currency_reserve: 0.0345)
Reserve.create(currency_id: Currency.find_by(name: 'Litecoin').id, currency_reserve: 0.1345)
Reserve.create(currency_id: Currency.find_by(name: 'Ripple').id, currency_reserve: 0.2)
Reserve.create(currency_id: Currency.find_by(name: 'Qiwi').id, currency_reserve: 10000)

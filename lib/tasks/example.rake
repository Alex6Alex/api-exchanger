namespace :example do
  task some_task: :environment do
    Currency.create(name: 'dddd', code: 'ERE')
  end
end

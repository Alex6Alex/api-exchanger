Rails.application.routes.draw do
  namespace :api do
    resource :currencies do
      get  'currency_list'
      get  'currency_reserves'
      get  'current_course'
      post 'confirm_order'
    end

    resource :reviews, only: %i[index, create]
  end
end

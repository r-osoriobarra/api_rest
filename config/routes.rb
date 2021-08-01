Rails.application.routes.draw do
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      get 'by_date/:date', to: 'ufs#by_date'
      get 'users/:name', to: 'users#by_name'
    end
  end
end

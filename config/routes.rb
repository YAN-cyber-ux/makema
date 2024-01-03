Rails.application.routes.draw do
  resources :emas
  root "emas#index"
end

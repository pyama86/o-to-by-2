Rails.application.routes.draw do
  resources :stir_up, only: %i(create)
end

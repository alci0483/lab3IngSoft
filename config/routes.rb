Rails.application.routes.draw do
  resources :monsters, only: [:index, :show]

  delete "monsters/:id", to: "monsters#destroy", as: :destroy_monster

  root "monsters#index"
end

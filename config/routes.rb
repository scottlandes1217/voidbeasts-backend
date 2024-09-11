Rails.application.routes.draw do
  # API Routes for Characters
  resources :characters, only: [:index, :show, :create]

  # This can serve as a fallback in case an invalid route is hit
  match '*unmatched', to: 'application#route_not_found', via: :all
end

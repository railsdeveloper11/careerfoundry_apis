Rails.application.routes.draw do
  root to: "courses#index"
  resources :courses, param: :slug, only: %w(show index)
end

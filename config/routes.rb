Rails.application.routes.draw do

  root to: 'home#index'
  mount RailsAuth::Engine, at: '/'

end

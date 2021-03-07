Rails.application.routes.draw do

  root to: 'home#index'
  namespace :board, defaults: { namespace: 'board' } do
    root '/board/home#index'
  end

  mount RailsAuth::Engine, at: '/' if defined? RailsAuth

end

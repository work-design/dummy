Rails.application.routes.draw do

  root to: 'home#index'
  namespace :board, defaults: { namespace: 'board' } do
    root 'home#index'
  end

  namespace :my, defaults: { namespace: 'my' } do
    root 'home#index'
  end

end

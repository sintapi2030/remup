Rails.application.routes.draw do
  devise_for :users
  # devise_for :users
  # get 'comments/index'
      # rootが上?
  root "comments#index"
  resources :users, only: [:edit, :update]   
  get 'comments/movies'
  get 'comments/doramas'
  get 'comments/musics'
  get 'comments/games'
  get 'comments/radios'
  get 'comments/sns'
  get 'comments/products'
  get 'comments/tools'
  get 'comments/foods'
  get 'comments/drinks'
  get 'comments/refreshs'
  get 'comments/lifes'
  get 'comments/studys'
  get 'comments/sports'
  get 'comments/freedays'
  get 'comments/deliverys'
end

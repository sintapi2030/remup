Rails.application.routes.draw do
  get 'comments/index'
      # rootが上?
  root "comments#index"   
  get 'comments/movies'
  get 'comments/doramas'
  get 'comments/musics'
  get 'comments/games'
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

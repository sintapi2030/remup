Rails.application.routes.draw do
  get 'comments/index'
      # rootが上?
  root "comments#index"   
end

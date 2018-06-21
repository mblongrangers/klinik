Rails.application.routes.draw do
  namespace :app do
    get 'sites/patient'
    post 'sites/search'
    get 'sites/result/:id', to: 'sites#result', as: 'sites_result'
  end
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: 'app/sites#patient'
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Lists route
  resources :lists do
    resources :tasks
    patch 'tasks/done_toggle', to: 'tasks#done_toggle'
  end


end

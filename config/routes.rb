ClipIt::Application.routes.draw do
  resources :clips


  root to: 'static_pages#home'
end

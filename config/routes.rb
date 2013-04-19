ClipIt::Application.routes.draw do
  devise_for :users

  resources :clips, only: [:new, :create, :show, :edit, :index]

  match '/about',     to: 'static_pages#about'
  match '/example',   to: 'static_pages#example'
  root                to: 'static_pages#home'
end

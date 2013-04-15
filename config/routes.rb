ClipIt::Application.routes.draw do
  resources :clips, only: [:new, :create, :show, :edit]

  match '/about',   to: 'static_pages#about'
  root to: 'static_pages#home'
end

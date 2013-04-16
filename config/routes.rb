ClipIt::Application.routes.draw do
  resources :clips, only: [:new, :create, :show, :edit]

  match '/about',     to: 'static_pages#about'
  match '/example',   to: 'static_pages#example'
  root                to: 'static_pages#home'
end

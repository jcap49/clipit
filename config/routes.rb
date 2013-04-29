ClipIt::Application.routes.draw do
  devise_for :users
  devise_for :admins

  resources :clips, only: [:new, :create, :show, :edit, :index, :destroy, :update] do
    collection do
      get :video_results
    end
  end

  match '/example',   to: 'clips#example'
  match '/about',     to: 'static_pages#about'
  root                to: 'static_pages#home'
end

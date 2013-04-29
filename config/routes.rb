ClipIt::Application.routes.draw do
  devise_for :users

  resources :clips, only: [:new, :create, :show, :edit, :index, :destroy, :update] do
    collection do
      get :video_results
    end
  end

  match '/admins/index', to: 'admins#dashboard'
  match '/example',   to: 'clips#example'
  match '/why',       to: 'static_pages#why'
  root                to: 'static_pages#home'
end

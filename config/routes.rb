Rails.application.routes.draw do

  get 'notifications/:id/link_through', to: 'notifications#link_through', as: :link_through

  get 'policy/index'

  get 'terms/index'

  # 問い合わせフォーム
  get 'inquiry' => 'inquiry#index'
  get 'inquiry/confirm' => redirect("/inquiry")
  get 'inquiry/thanks' => redirect("/inquiry")
  # 問い合わせ確認画面
  post 'inquiry/confirm' => 'inquiry#confirm'
  # 問い合わせ完了画面
  post 'inquiry/thanks' => 'inquiry#thanks'

  devise_for :users, :controllers => {
    :sessions => "users/sessions",
    :registrations => "users/registrations",
    :passwords => "users/passwords",
  }
  resources :users, :only => [:index, :show] do
    resources :like_places, :only => [:index]
    collection do
      get 'search'
    end
  end
  resources :reviews, :only => [:index, :destroy] do
    collection do
      get 'search'
    end
  end
  resources :likes, :only => [:create, :destroy]
  resources :like_places, :only => [:create, :destroy]

  root 'places#index'

  namespace :places do
    #get 'place/list' request
    get 'list'
  end


  resources :places, :only => [ :index, :show, :create, :destroy ] do
    resources :reviews, :only => [ :index, :show, :new, :create, :edit, :update ]
    collection do
      get 'search'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'sitemaps/sitemap' =>'sitemaps#sitemap'
  get '*path', controller: 'application', action: 'render_404'
end

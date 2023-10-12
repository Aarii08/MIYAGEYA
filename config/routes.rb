Rails.application.routes.draw do

  devise_for :users, skip: [:passwords], controllers: {
    registrations: 'public/registrations',
    sessions: 'public/sessions'
  }

  devise_scope :user do
    post "user/guest_sign_in", to: "public/sessions#guest_sign_in"
  end

  root to: "public/homes#top"
  get '/about' => 'public/homes#about', as: 'about'

  scope module: :public do
    get 'users/mypage' => 'users#show', as: 'user'
    get 'users/information/edit' => 'users#edit', as: 'user_edit'
    patch 'users/information' => 'users#update', as: 'user_update'
    get 'users/confirm' => 'users#confirm', as: 'user_confirm'
    patch 'users/withdrawal' => 'users#withdrawal', as: 'user_withdrawal'
    get 'users/review' => 'users#review', as: 'user_review'
    get 'users/want' => 'users#want', as: 'user_want'

    get 'search/souvenirs' => 'souvenirs#search_souvenir', as: 'search_souvenirs'
    get 'search/prefectures/:id' => 'souvenirs#search_prefecture', as: 'search_prefecture'
    get 'search/categorys' => 'souvenirs#search_category', as: 'search_category'
    resources :souvenirs do
      resource :wants, only: [:create, :destroy]
      resources :reviews, except: [:index]
    end
    

  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: 'admin/sessions'
  }

  namespace :admin do
    root to: "homes#top"
    resources :users, only: [:index, :show, :edit, :update]
    get 'users/:id/review' => 'users#review', as: 'user_review'
    get 'users/:id/want' => 'users#want', as: 'user_want'

    resources :prefectures, only: [:index, :create, :edit, :update, :destroy]
    resources :souvenirs do
      resource :wants, only: [:destroy]
      collection do
      get 'wants' => 'wants#index'
      get 'reviews' => 'reviews#index'
      end
      resources :reviews, only: [:show, :update, :destroy]
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

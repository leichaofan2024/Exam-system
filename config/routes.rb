Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  get '/info' => 'info#index'
  devise_for :users
  # devise_for :users, :controllers => {
  #   :sessions      => "users/sessions",
  #   :registrations => "users/registrations",
  #   :passwords     => "users/passwords",
  # }
  resources :products do
    member do
      post :add_to_cart
      post :favorite
      post :unfavorite
      post :instant_buy
    end
    collection do
      get :my_course
      get :search
    end
    resources :reviews, only: [:new, :create]
  end

  namespace :admin do
    resources :quizzes do
      resources :questions
    end
    resources :categories
    resources :products
    resources :posts
    resources :orders do
      member do
        post :cancel
        post :ship
        post :shipped
        post :return
      end
    end
  end


  resources :carts do
    collection do
      delete :clean
      post :checkout
    end
  end

  resources :cart_items

  resources :orders do
    member do
      post :pay_with_alipay
      post :pay_with_wechat
      post :apply_to_cancel
    end
  end

  namespace :account do
    resources :orders
  end

  resources :favorites


  resources :quizzes do
    member do
      post :exam_records
    end
    resources :questions
  end

  root "welcome#index"

  get 'about' => 'welcome#about'

  post "set_answer_1_status" => "answers#set_answer_1_status"
  post "set_answer_2_status" => "answers#set_answer_2_status"
  post "set_answer_3_status" => "answers#set_answer_3_status"
  post "set_answer_4_status" => "answers#set_answer_4_status"


end

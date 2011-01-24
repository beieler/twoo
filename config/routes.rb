Twoo::Application.routes.draw do
  resources :contributions
  resources :subjects
  resources :themes
  resources :accounts
  resources :books do
    member do
      get 'statistics'
      get 'preview'
      get 'finalize'
    end
  end
  namespace :admin do
    resources :contributions
    resources :subjects
    resources :themes
    resources :accounts
    resources :books
  end

  devise_for :users, :controllers => { :registrations => "users/registrations" }

  get "home/index"
  get "home/howItWorks"
  get "home/bookExamples"
  get "home/faqs"
  get "home/pricingAndShipping"
  get "home/ourStory"
  get "home/ourGiving"
  get "home/privacyPolicy"
  get "home/contactUs"
  get "home/ourGuarantee"
  get "home/terms"
  get "home/pressArticle"
  get "home/bookExampleDetail"

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  #namespace :user do
  #  #root :to => "users#index"
  #  root :to => "home#index" # does not work!
  #end
  #scope '/user' do
  #  root :to => "home#index"
  #end

  # For devise sign_in.
  match '/home/index' => 'home#index', :as => 'user_root'
  
  match '/admin' => 'home#admin'

  # For devise sign_out.
  root :to => "home#index" # no effect until we del public/index.html
end

# Copyright (c) 2010 Christopher Dunn.

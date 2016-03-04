Rails.application.routes.draw do
  get "hashtags/:hashtag",   to: "hashtags#show",      as: :hashtag
  get "hashtags",            to: "hashtags#index",     as: :hashtags
  resources :events
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'events#index'

   mount Blazer::Engine, at: "blazer"
end

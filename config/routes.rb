Spree::Core::Engine.routes.draw do
  # Add your extension routes here
  namespace :admin do
    resources :newsletter_subscribers
  end
  resources :newsletter_subscribers
end

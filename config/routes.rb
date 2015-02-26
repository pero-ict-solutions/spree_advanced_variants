Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :products do
      resources :variants do
        collection do
          post :generate_for_option_types
        end
      end
    end
  end
end

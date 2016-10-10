Rails.application.routes.draw do
  namespace :jera_push do
    namespace :admin do
      resources :messages, only: [:index, :show, :new, :create]
      resources :devices, only: [:index]
    end

    namespace :v1 do
      resources :devices, only: [:create] do
        collection do
          delete :destroy
        end
      end
    end
  end
end

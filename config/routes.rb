Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  scope module: "api" do
    namespace :v1 do
      resources :works do
      end
    end
  end

end

Rails.application.routes.draw do
  scope '/api' do
    scope '/v1' do
      resources :users, only: %i(index show create update destroy)
      get 'auth', to: 'users#auth'
      post 'update_status', to: 'users#update_status'
    end
  end
end

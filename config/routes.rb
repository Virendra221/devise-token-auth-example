Rails.application.routes.draw do

  mount_devise_token_auth_for 'User', at: 'auth', 
  # skip: [:token_validations],
  controller: {
        sessions: 'devise_token_auth/sessions',
        registrations: 'devise_token_auth/registrations',
        omniauth_callbacks: "devise_token_auth/omniauth_callbacks"
      }
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :profile
  resources :address
  get "auth", to: "auth#is_signed_in?"

end

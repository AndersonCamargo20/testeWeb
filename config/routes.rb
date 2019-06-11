Rails.application.routes.draw do
  resources :representante_homologations
  get 'pdf/certified'

  resources :representantes_homologations
  resources :representante_empresas
  resources :material_recursos
  resources :paf_ecfs
  resources :companis
  resources :homologations
  get 'home/index'

  devise_for :users
  resources :controle_periodos
  resources :enderecos
  
	authenticated :user do
		root 'home#index', as: 'authenticated_root'
	end

	devise_scope :user do
		root 'devise/sessions#new'
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
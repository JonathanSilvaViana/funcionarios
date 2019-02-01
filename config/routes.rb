Rails.application.routes.draw do
  get 'relatorio/busca'
  resources :responsabilidades
  resources :dependentes
  resources :cargos
  resources :funcionarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#index'

  get 'relatorio', to: 'relatorio#busca'

end

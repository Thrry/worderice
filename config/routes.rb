Rails.application.routes.draw do
  # mount Rswag::Ui::Engine => '/api-docs'
  # mount Rswag::Api::Engine => '/api-docs'
  get 'word/index'
  get 'api/v1/random', to: 'word#random'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'word#index'
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :pizzas
  scope '/api' do
    scope '/week' do
      get '/' => 'pizzas#week'
    end
  end

end

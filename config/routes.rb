Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :pizzas, only: [:index]
  resources :ingredients, only: [:index]
  scope '/api' do
    scope '/week' do
      get '/:date' => 'pizzas#week'
    end
  end

  scope '/api' do
    scope '/pizza' do
      get '/:search' => 'pizzas#search'
    end
  end

  scope '/api' do
    scope '/ingredients' do
      get '/:search' => 'ingredients#search'
    end
  end

  scope '/api' do
    scope '/today' do
      get '/:date' => 'pizzas#today'
    end
  end

end

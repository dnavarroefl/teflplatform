Rails.application.routes.draw do
    
  root :to => 'students#home'
  get '/' => 'students#home' 
  get '/contact' => 'students#contact'
  get '/media' => 'students#media'
  get '/tools' => 'students#tools'
  get '/posts' => 'posts#index'
  get '/games' => 'students#games'

  get '/tutor' => 'tutors#index'

  post 'students/new' => 'students#create'
  post 'posts/new' => 'posts#create'
  post 'comments/new' => 'comments#create'
  post 'contact/new' => 'comments#create'

  resources :tutors, :students, :posts, :comments
end

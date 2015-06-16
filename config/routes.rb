Rails.application.routes.draw do
    
  root :to => 'students#home'
  get '/' => 'students#home' 
  get '/contact' => 'students#contact'
  get '/media' => 'students#media'
  get '/tools' => 'students#tools'
  get '/posts' => 'posts#index'
  get '/games' => 'students#games'

  get '/tutor' => 'tutors#index'

  get '/teachers' => 'teachers#index'

  get  "dropbox/main"
  get  "dropbox/auth_start"
  get  "dropbox/auth_finish"
  get  "dropbox/explore" => redirect("https://www.dropbox.com/home/TEFL")
     
  post "dropbox/upload"

  get "duolingo/dashboard" => redirect("https://dashboard.duolingo.com/")

  post 'students/new' => 'students#create'
  post 'posts/new' => 'posts#create'
  post 'comments/new' => 'comments#create'
  post 'contact/new' => 'comments#create'

  resources :tutors, :students, :posts, :comments, :answers
end

Rails.application.routes.draw do
  
  # Rutas para la autenticación 
  get 'sessions/new' 
  
  get "login" => "sessions#new", :as => "login"
  get "logout" => "sessions#destroy", :as => "logout"
  get "signup" => "users#new", :as => "signup"

  resources :users
  resources :sessions
  root :to => 'students#home'

  # Rutas para los usuarios y su interacción (posts, respuestas y comentarios)

  resources :tutors, :students, :answers 
  
  resources :posts do 
    resources :comments
  end 

  # Rutas para las secciones a las que podrán acceder los estudiantes y los profesores

  get '/home' => 'students#home' 
  get '/contact' => 'students#contact'
  get '/media' => 'students#media'
  get '/tools' => 'students#tools'
  get '/posts' => 'posts#index'
  get '/games' => 'students#games'
  get '/tutor' => 'tutors#index'

  get '/teachers' => 'teachers#index'

  # Rutas para las herramientas conectadas a nuestra plataforma

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
end

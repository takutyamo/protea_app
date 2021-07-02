Rails.application.routes.draw do
  root 'welcome#home'

  get '/student/:id' => 'student#show'
  get '/student' => 'student#new'
  post '/student' => 'student#create'
  delete 'student/:id' => 'student#destroy' 

  get '/login' => 'login#new'
  post '/login' => 'login#create'
  delete '/logout' => 'login#destroy'

  get '/reports' => 'reports#index'
  get '/report/new' => 'reports#new'
  post '/report/create' => "reports#create"
  get '/report/:id' => 'reports#show'
  get '/report/:id/edit' => 'reports#edit'
  patch '/report' => 'reports#update'
  delete '/report/:id' => 'reports#destroy'
end

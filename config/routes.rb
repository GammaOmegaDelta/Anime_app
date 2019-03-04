Rails.application.routes.draw do
  namespace :api do
    get '/animes' => 'animes#index'
    get '/animes/:id' => 'animes#show'
    post '/animes' => 'animes#create'
    patch '/animes/:id' => 'animes#update'
    delete 'animes/:id' => 'animes#destroy'
  end
end

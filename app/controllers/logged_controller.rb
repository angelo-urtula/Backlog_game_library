class LoggedController < ApplicationController

    get '/login' do
        erb :'/logged/login'
    end

    post '/logged' do
        login(params[:username], params[:password])
        redirect '/games'
    end

    get '/logout' do
        logout!
    end

    get '/games' do
        
        "You are logged in as #{session[:username]}"
    end

end
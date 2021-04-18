class LoggedController < ApplicationController

    get '/login' do
        erb :'/logged/login'
    end

    post '/logged' do
        session[:username] = params[:username]
        redirect '/games'
    end

    get '/games' do
        
        "You are logged in as #{session[:username]}"
    end

end
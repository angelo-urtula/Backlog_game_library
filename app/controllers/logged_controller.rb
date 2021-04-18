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

    get '/signup' do
        erb :'/logged/signup'
    end

    post '/signedup' do
        signup(params[:username], params[:password])
        redirect '/games'
    end

    get '/signup/failure' do
        erb :'/logged/signup_failure'
    end

    get '/games' do
        
        "You are logged in as #{session[:username]}"
    end

end
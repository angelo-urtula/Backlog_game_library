class LoggedController < ApplicationController

    get '/login' do
        erb :'/logged/login'
    end

    post '/logged' do
        login(params[:username], params[:password])
        redirect '/'
    end

    get '/signup' do
        erb :'/logged/signup'
    end

    post '/signedup' do
        if params[:username].empty? || params[:password].empty?
            redirect to '/failureempty'
        else
            signup(params[:username], params[:password])
        end
        redirect '/'
    end

    get '/failure' do
        erb :'/logged/signup_failure'
    end

    get '/failureempty' do
        erb :'/logged/signup_failureempty'
    end

    get '/logout' do
        logout!
        redirect to '/'
    end
end
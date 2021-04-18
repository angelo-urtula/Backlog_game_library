require './config/environment'
require 'securerandom'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
        set :session_secret, "beybladesaresupercool"
  end

  helpers do

    def logged_in?
      !!session[:username]
    end

    def login(username, password)
      user = User.find_by(:username => username)
        if user && user.authenticate(password)
        session[:username] = user.username
      else
        redirect '/login'
      end
    end

    def signup(username, password)
      if User.find_by(:username => username)
        redirect '/failure'
      else
        user = User.create(:username => username, :password => password)
        session[:username] = user.username
      end
    end
        


    def current_user

    end

    def logout!
      session.clear
    end
  end



end

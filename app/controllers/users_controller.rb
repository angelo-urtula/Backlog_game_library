class UsersController < ApplicationController

    get '/profiles' do
        @users = User.all
        erb :'/user/index'
    end

    get '/profiles/:id' do
        @user = User.find(params[:id])
        erb :'/user/show'
    end

    get '/profiles/:id/edit' do
        @user = User.find(params[:id])
        @games = Game.all
        if session[:username] == @user.username
        erb :'/user/edit'
        else
            erb :'/user/warning'
        end
    end

    post '/profiles/:id' do
        if !params[:user].keys.include?("game_ids")
            params[:user]["game_ids"] = []
        end

        @user = User.find(params[:id])
        @user.update(params["user"])
        if !params["game"]["name"].empty? && !params["game"]["console"].empty? && !params["game"]["genre"].empty?
            @user.games << Game.create(:name => params["game"]["name"], :console => params["game"]["console"], :genre => params["game"]["genre"])
        
        
        end
        redirect to "/profiles/#{params[:id]}"
    end
end
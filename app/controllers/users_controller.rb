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

end
class UsersController < ApplicationController

    get '/profiles' do
        @users = User.all
        erb :'/user/index'
    end

    get '/profile/:id' do
        erb :'/user/show'
    end
end
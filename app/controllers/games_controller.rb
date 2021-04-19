class GamesController < ApplicationController
    get '/' do
        @games = Game.all
        erb :'/games/index'
    end

    get '/game/:id' do
        @game = Game.find(params[:id])
        erb :'/games/show'
    end
end
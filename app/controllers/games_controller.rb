class GamesController < ApplicationController
    get '/' do
        @games = Game.all
        erb :'/games/index'
    end
end
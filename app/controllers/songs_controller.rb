class SongsController < ApplicationController
  def index
    require "pry"; binding.pry
    @songs = Song.all
  end
end

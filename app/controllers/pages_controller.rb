class PagesController < ApplicationController

  before_action :authenticate_player!, except: [:home, :tutorial]

  def home
  end

  def tutorial
  end

  def arena
  end

  def lobby
  end
end

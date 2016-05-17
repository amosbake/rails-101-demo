class WelcomeController < ApplicationController
  def index
    flash[:warning] ="Good Night!"
  end
end

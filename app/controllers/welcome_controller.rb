class WelcomeController < ApplicationController
  def index
    @subforums = Subforum.all
  end
end

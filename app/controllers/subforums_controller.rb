class SubforumsController < ApplicationController

  def index
    @subforums=Subforum.all
  end

  def show
    @subforum = Subforum.find(params[:id])
  end

  def new
    @subforum = Subforum.new
  end

  def edit
  end

  def create
    @subforum = Subforum.new(params.require(:subforum).permit(:title))
    @subforum.save
    redirect_to @subforum
  end

  def update
  end

  def destroy
  end

end

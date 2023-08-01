class JournalistsController < ApplicationController
  def index
    @journalist = Journalist.all
  end

  def create
    @journalist = Journalist.new(journalists_params)
    if @journalist.save
      redirect_to journalists_index_path
    else
      render :new
    end
  end

  def new
    @journalist = Journalist.new
  end

  def journalists_params
    params.require(:journalist).permit(:name, :lastname, :specialty)
  end
end

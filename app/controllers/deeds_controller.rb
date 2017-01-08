class DeedsController < ApplicationController

  def index
    @deeds = Deed.all
    render 'index.html.erb'
  end

  def show
    @deed = Deed.find_by(id: params[:id])
    render 'show.html.erb'
  end

end

class SuvicharsController < ApplicationController
  def index
    @suvichars = Suvichar.all
  end

  def show
    @suvichar = Suvichar.find(params[:id])
  end
end

class SuvicharsController < ApplicationController
  def index
    @suvichars = Suvichar.all.order! 'created_at DESC'
  end

  def show
    @suvichar = Suvichar.find(params[:id])
  end
end

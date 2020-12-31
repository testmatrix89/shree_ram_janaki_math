class SanskritiesController < ApplicationController
  def index
    @sanskrities = Sanskrity.all
  end

  def show
    byebug
    @sanskriti = Sanskrity.friendly.find(params[:id])
  end
end

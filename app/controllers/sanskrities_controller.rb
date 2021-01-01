class SanskritiesController < ApplicationController
  def index
    @sanskrities = Sanskrity.all.order! 'created_at DESC'
  end

  def show
    @sanskriti = Sanskrity.friendly.find(params[:id])
  end
end

class MattressesController < InheritedResources::Base

  private

    def mattress_params
      params.require(:mattress).permit(:image, :title, :description, :price, :discount, :colour_options)
    end
end


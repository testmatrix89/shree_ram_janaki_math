class SofasController < InheritedResources::Base

  private

    def sofa_params
      params.require(:sofa).permit(:image, :title, :description, :price, :discount, :colour_options)
    end
end


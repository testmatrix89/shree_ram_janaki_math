class DiningtablesController < InheritedResources::Base

  private

    def diningtable_params
      params.require(:diningtable).permit(:image, :title, :description, :price, :discount, :colour_options)
    end
end


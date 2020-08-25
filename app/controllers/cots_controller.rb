class CotsController < InheritedResources::Base

  private

    def cot_params
      params.require(:cot).permit(:image, :title, :description, :price, :discount, :colour_options)
    end
end


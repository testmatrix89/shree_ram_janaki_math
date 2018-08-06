class CotsController < InheritedResources::Base

  private

    def cot_params
      params.require(:cot).permit(:image,:cottitle, :cotdesc)
    end
end


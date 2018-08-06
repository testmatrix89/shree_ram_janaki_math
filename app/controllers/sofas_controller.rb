class SofasController < InheritedResources::Base

  private

    def sofa_params
      params.require(:sofa).permit(:sofatitle, :sofadesc, :image)
    end
end


class DiningtablesController < InheritedResources::Base

  private

    def diningtable_params
      params.require(:diningtable).permit(:diningtitle, :diningdesc, :image)
    end
end


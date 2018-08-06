class MattressesController < InheritedResources::Base

  private

    def mattress_params
      params.require(:mattress).permit(:matresstitle, :mattressdesc, :image)
    end
end


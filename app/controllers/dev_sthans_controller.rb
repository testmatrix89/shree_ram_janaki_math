class DevSthansController < InheritedResources::Base
  def index
    @dev_sthans = DevSthan.all
  end

  def show
    @dev_sthan = DevSthan.find(params[:id])
  end

  private

    def dev_sthan_params
      # params.require(:dev_sthan).permit(:sthan_name, :sthan_image, :sthan_description)
    end

end
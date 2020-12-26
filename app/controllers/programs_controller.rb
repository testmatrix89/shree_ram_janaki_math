class ProgramsController < InheritedResources::Base
  def show
    @program = Program.friendly.find(params[:id])
  end

  private
  def program_params
    params.require(:program).permit(:program_name, :program_date, :program_place, :program_activity, :program_description)
  end
end

class ProgramsController < InheritedResources::Base

  private

    def program_params
      params.require(:program).permit(:program_name, :program_date, :program_place, :program_activity, :program_description)
    end

end

class ProgramsController < InheritedResources::Base
  def index
    programsss = Program.all.order! 'program_date DESC'
    @expired_programs = programsss.select{ |prog| program_date_expired(prog.program_date) }
    @upcoming_programs = programsss.select{ |prog| program_date_upcoming(prog.program_date) }.reverse

  end

  def show
    @program = Program.friendly.find(params[:id])
  end

  private
  def program_params
    params.require(:program).permit(:program_name, :program_date, :program_place, :program_activity, :program_description)
  end
end

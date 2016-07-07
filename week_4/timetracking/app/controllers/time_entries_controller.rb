class TimeEntriesController < ApplicationController

#============================================================================================
#============================================================================================

	def index
		@my_project = Project.find(params[:project_id])
		@my_entries = @my_project.time_entries
		render "index"
	end

#============================================================================================
#============================================================================================

	def new
		@my_project = Project.find(params[:project_id])
		@new_entry = @my_project.time_entries.new
		render "new"
	end

#============================================================================================
#============================================================================================

	def create
		@my_project = Project.find(params[:project_id])
		@new_entry = @my_project.time_entries.new(entry_params)
		if @new_entry.save
		flash[:notice] = "Project created successfully"
		redirect_to project_time_entries_path
		else
		flash[:alert] = "Something went wrong. Please try again."
		redirect_to new_project_time_entry_path
	end
	end

#============================================================================================
#============================================================================================

	def edit
		@my_project = Project.find params[:project_id]
		@new_entry = @my_project.time_entries.find params[:id]
		render "edit"
	end

#============================================================================================
#============================================================================================

	def update
			@my_project = Project.find_by(id: params[:project_id])
			@new_entry = @my_project.time_entries.find_by(id: params[:id])
			if @new_entry.update(entry_params)
			flash[:notice] = "Project updated successfully"
			redirect_to project_time_entries_path
			else
			flash[:alert] = "Something went wrong. Please try again."	
			render "edit"
			end
	end

#============================================================================================
#============================================================================================

	def destroy
		@my_project = Project.find params[:project_id]
		@new_entry = @my_project.time_entries.find params[:id]
		
		@new_entry.destroy 

		redirect_to(project_time_entries_path(@my_project))
	end

#============================================================================================
#========================== *** PRIVATE *** =================================================
#============================================================================================

	private

	def entry_params
		params.require(:time_entry).permit(:hours, :minutes, :date, :comments)
	end	

#============================================================================================
#============================================================================================

end

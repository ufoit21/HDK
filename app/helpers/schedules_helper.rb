module SchedulesHelper
	
	def approved?(otherSchedule)
      	@schedule=Schedule.find_by_id(otherSchedule)
      	if @schedule.statue=="approved"
        	return true
    	end
    end

    def layProject
    	assignedProject=current_user.assigned_project
    	asProjectId=assignedProject.project_id
    	project=Project.find_by_id_and(asProjectId)
    	projectName=project.name
    end
end

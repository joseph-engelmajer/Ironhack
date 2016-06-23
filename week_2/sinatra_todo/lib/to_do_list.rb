class TodoList
	attr_accessor :tasks
    def initialize
        @tasks = []
    end
#=======================================
#=======================================
	def add_task(task)
		@tasks = @tasks.push(task)
	end
#=======================================
#=======================================
	def delete_task(id)
		@tasks.delete_if {|x| x.id == id}
	end
#=======================================
#=======================================
	def find_task_by_id(id)
		@tasks.find {|x| x.id == id}
	end
#=======================================
#=======================================
	def sort_by_created
		sorted_tasks = @tasks.sort { | task1, task2 | task1.created_at <=> task2.created_at }
	end
end
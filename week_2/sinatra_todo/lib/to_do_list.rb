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
		@tasks.delete_if {|x| x.id = id}
	end
end


class Task
attr_accessor :content, :id, :created_at
@@current_id = 1
	def initialize (content)
		@content = content
		@id = @@current_id
		@@current_id += 1
		@complete = 0
		@created_at = Time.now
		@updated_time = nil
	end
#=========================================================
#=========================================================
	def complete?
		if @complete == 1
			true
		else
			false
		end
	end
#=========================================================
#=========================================================
	def complete!
		@complete = 1
	end
#=========================================================
#=========================================================
	def make_incomplete!
		@complete = 0
	end
#=========================================================
#=========================================================
	def update_task(new_content)
		@content = new_content
		@updated_time = Time.now 
	end
end
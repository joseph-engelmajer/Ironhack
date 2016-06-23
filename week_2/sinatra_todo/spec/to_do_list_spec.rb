require_relative ("../lib/task.rb")
require_relative ("../lib/to_do_list.rb")

RSpec.describe Task do 
	let :task do
		Task.new("content")
	end
	let :my_list do
		TodoList.new
	end


describe "#add_task" do 
		it "pushes new tasks into an array of tasks" do 
			my_list.add_task(task)
			my_list.add_task(task)
			my_list.add_task(task)
			expect(my_list.tasks.length).to eq(3)
		end
	end
	describe "#delete_task" do 
		it "deletes a task based on the unique ID provided" do 
			my_list.add_task(task)
			my_list.add_task(task)
			my_list.add_task(task)
			my_list.delete_task(2)
			expect(my_list.tasks.length).to eq(2)
		end
	end
end
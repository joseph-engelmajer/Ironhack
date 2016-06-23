require_relative ("../lib/task.rb")
require_relative ("../lib/to_do_list.rb")

RSpec.describe Task do 
	let :task do
		Task.new("content")
	end
	let :my_list do
		TodoList.new
	end

	describe "#complete?" do
		it "verifies if a task is complete or not" do
			expect(task.complete?).to eq(false)
		end
	end
	describe "#complete!" do 
		it "sets a task to completed so that complete? returns true" do 
			task.complete!
			expect(task.complete?).to eq(true)
		end
	end
	describe "#make_incomplete!" do 
		it "sets a task to incompleted so that complete? returns false" do 
			task.complete!
			task.make_incomplete!
			expect(task.complete?).to eq(false)
		end
	end
	describe "#update_task" do 
		it "updates the content of a task and the time it was created" do 
			task
			task.update_task("this task has been updated")
			expect(task.content).to eq("this task has been updated")
		end
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
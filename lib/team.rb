class Team
	#attribute reader
	attr_reader(:team_name, :id,:members)

	#array to store teams
	@@teams = []

	#initialize method
	define_method(:initialize) do |attributes|
		@team_name = attributes.fetch(:team_name)
    	@id = @@teams.length().+(1)
    	@members = []
	end

  	#method to add a member
  	define_method(:add_member) do |member|
    	@members.push(member)
  	end

  	#method to return all teams
  	define_singleton_method(:all) do
    	@@teams
  	end

  	#method to save a team
  	define_method(:save) do
    	@@teams.push(self)
  	end

  	#method to clear teams from the array list
  	define_singleton_method(:clear) do
    	 @@teams = []
   	end

   	#method to find the id of a team
  	define_singleton_method(:find) do |identification|
  		found_team = nil
    	@@teams.each() do |team|
      	if team.id().eql?(identification.to_i())
      		found_team = team
      	end
      end
      found_team
  end
end
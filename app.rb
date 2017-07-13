require('sinatra')
require('sinatra/reloader')
require('./lib/team')
require('./lib/member')
also_reload('lib/**/*.rb')

#route for index
get('/') do
    erb(:index)
  end

#route to new team form
get("/teams/new") do
	erb(:team_form)
end

#route to new member form
get("/members/new") do
	erb(:member_form)
end

#post request to post the teams
post("/teams") do
	team_name = params.fetch("team_name")
	new_team = Team.new({:team_name=>team_name})
	new_team.save()
	erb(:success)
end


#get request to display teams added
get("/teams") do
	@teams = Team.all()
	erb(:teams)
end

#get request to view specific team
 get("/teams/:id") do
 	id = params.fetch("id").to_i
    @team = Team.find(id)
    erb(:team)
 end 

 post("/teams/:id") do
    @team = Team.find(params.fetch("id").to_i)
    member_name = params.fetch("member_name")
	new_member = Member.new({:member_name=>member_name})
	@team.add_member(new_member)
    erb(:team)
 end
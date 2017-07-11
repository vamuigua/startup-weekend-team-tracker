require('rspec')
  require('team')
  require('member')

  describe('Team') do
    before() do
     Team.clear()
   end

   describe('#add_member') do
     it("adds a new member to a Team") do
       test_team = Team.new({:team_name=> "CoderX"})
       test_member = Member.new({:member_name=>"June"})
       test_member.save
       test_team.save
       test_team.add_member(test_member)
       expect(Team.all()).to(eq([test_team]))
     end
   end

   describe(".all") do
      it("is empty at first") do
        expect(Team.all()).to(eq([]))
      end
    end

    describe("#save") do
    it("adds a Team to the array of saved Teams") do
      test_team = Team.new({:team_name=> "CoderX"})
      test_team.save()
      expect(Team.all()).to(eq([test_team]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved Teams") do
      Team.new({:team_name=> "CoderX"}).save()
      Team.clear()
      expect(Team.all()).to(eq([]))
    end
  end

  describe(".find") do
    it("returns a Team by its id number") do
    	test_team = Team.new({:team_name=> "CoderX"})
      	test_team.save()
      	test_team2 = Team.new({:team_name=> "Seers"})
      	test_team2.save()
      	expect(Team.find(test_team.id())).to(eq(test_team))
      end
  end

   describe("#team_name") do
     it("returns the name of the Team") do
       test_team = Team.new({:team_name=> "CoderX"})
       expect(test_team.team_name()).to(eq("CoderX"))
     end
   end

   describe("#members") do
     it("initially returns the members for a Team") do
       test_team = Team.new({:team_name=> "CoderX"})
       test_member = Member.new({:member_name=>"June"})
       test_member.save()
       test_team.save()
       test_team.add_member(test_member)
       expect(test_team.members()).to(eq([test_member]))
     end
   end

    describe("#id") do
      it("returns the id of a team") do
        test_team = Team.new({:team_name=> "CoderX"})
        test_team.save()
        expect(test_team.id()).to(eq(1))
      end
    end
  end
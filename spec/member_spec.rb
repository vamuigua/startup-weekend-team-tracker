require('rspec')
require('team')
require('member')

#spec to return the member_name of a member of a team
describe("#member_name") do
    it("returns the member_name of the member") do
        test_member = Member.new({:member_name=>"June"})
        expect(test_member.member_name()).to(eq("June"))
    end
end

#spec that checks members in team at first when empty  
describe(".all") do
    it("members are empty at first") do
        expect(Member.all()).to(eq([]))
    end
end

#spec to save new members
describe("#save") do
    it("adds a member to the team of saved members") do
        test_member = Member.new({:member_name=>"June"})
        test_member.save()
        expect(Member.all()).to(eq([test_member]))
    end
end

#spec to clear the members in a team
describe(".clear") do
    it("empties out all of the saved members from the team") do
        Member.new({:member_name=>"June"}).save()
        Member.clear()
        expect(Member.all()).to(eq([]))
    end
end

#spec to give the id of the member in a team
describe("#id") do
    it("returns the id of the mamber") do
        test_member = Member.new({:member_name=>"June"})
        test_member.save()
        expect(test_member.id()).to(eq(1))
    end
end

#spec to find each member of a team by the id
describe(".find") do
    it("returns a member of a team by its id number") do
        test_member = Member.new({:member_name=>"June"})
        test_member.save()
        test_member2 = Member.new({:member_name=>"June"})
        test_member2.save() 
        expect(Member.find(test_member.id())).to(eq(test_member))
    end
end
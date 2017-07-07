require('rspec')
require('team')
require('member')

#spec to return the name of a member of a team
describe("#name") do
    it("returns the name of the member") do
        test_member = Member.new({:name=>"Joneh"})
        expect(test_member.name()).to(eq("Joneh"))
    end
end

#spec that checks members in team at first when empty  
describe(".all") do
    it("members are empty at first") do
        expect(Member.all()).to(eq([]))
    end
end
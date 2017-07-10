class Member
    #attribute reader
    attr_reader(:member_name)
    
    #array to store members
    @@members = []
    
    #initialize variables
    define_method(:initialize) do |attributes|
      @member_name = attributes.fetch(:member_name)
      @id = @@members.length().+(1)
    end
    
    #method id to return the id of a member in a team
    define_method(:id) do
      @id
    end

    #instance method for member_name
    define_method(:member_name) do
      @member_name
    end
    
    #class method for checking all members in a team
    define_singleton_method(:all) do
      @@members
    end
    
    #method for saving new members to a team
    define_method(:save) do
      @@members.push(self)
    end
    
    #method for clearing/removing the members in a team
    define_singleton_method(:clear) do
      @@members = []
    end
    
    #method to find the id of a member in a team
    define_singleton_method(:find) do |identification|
      identified_member = nil
      @@members.each() do |member|
        if member.id().eql?(identification.to_i())
          identified_member = member
        end
      end
      identified_member
    end
    
end
  
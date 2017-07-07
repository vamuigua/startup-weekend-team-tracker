class Member
    #attribute reader
    attr_reader(:name)
    
    #array to store members
    @@members = []
    
    #initialize variables
    define_method(:initialize) do |attributes|
      @name = attributes.fetch(:name)
      @id = @@members.length().+(1)
    end
    
    #method id to return the id of a member in a team
    define_method(:id) do
      @id
    end
    
    #class method for checking all members in a team
    define_singleton_method(:all) do
      @@members
    end
    
    #method for saving new members to a team
    define_method(:save) do
      @@members.push(self)
    end
    
end
  
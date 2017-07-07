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
    
    #method id to return the id of a member
    define_method(:id) do
      @id
    end
    
end
  
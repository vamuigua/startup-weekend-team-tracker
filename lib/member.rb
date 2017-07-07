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
end
  
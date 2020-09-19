class Doctor 
   attr_accessor :name
   
 @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end
  
end 
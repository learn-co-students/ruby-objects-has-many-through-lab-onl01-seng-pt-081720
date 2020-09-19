class Patient 
  attr_accessor :name , :appointment , :doctor 
  
  
  def initialize (name)
    @name=name 
  end 
  
  def new_appointment (date,doctor) 
    Appointment.new 
  end 
  
end 
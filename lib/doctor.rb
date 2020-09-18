class Doctor
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
        
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select{|name| name.doctor == self}
    end

    def new_appointment(date,patient)
        appointment = Appointment.new(date,patient,self)
    end

    

    def patients
        Appointment.all.collect{|name| name.doctor == self }
    end

    
end
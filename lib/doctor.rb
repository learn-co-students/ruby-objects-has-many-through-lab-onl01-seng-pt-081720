class Doctor
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
        @appointments = []
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select{|name| name.doctor == self}
    end

    def new_appointment(date,patient)
        Appointment.new(date,patient,self)
    end

    

    def patients
        appointments.collect{|appt| appt.patient}
    end

    
end
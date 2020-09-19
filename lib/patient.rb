class Patient
    attr_accessor :name, :doctor, :appointment

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select{|name| name.patient == self}
    end

    def new_appointment(date,doctor)
        Appointment.new(date,self,doctor)
    end

    def doctors
        appointments.collect{|appointment| appointment.doctor}
    end

  


end
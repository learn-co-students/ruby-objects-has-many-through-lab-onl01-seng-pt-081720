require 'pry'
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
     Appointment.all.filter {|appt| appt.doctor == self}
    end

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end

    def patients
        appointments.map {|appointment| appointment.patient}
        # doctor_who.patients
    end
end

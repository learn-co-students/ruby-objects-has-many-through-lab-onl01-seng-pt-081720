require 'pry'
class Doctor
    attr_accessor :name

    @@all = []

    def initialize(name)
        # binding.pry
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select do |appt|
            appt.doctor == self
        end
    end

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end

    def patients
        appointments.collect do |pt|
            pt.patient
        end
    end
end
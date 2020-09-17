#require 'pry'
class Patient
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
        appt_arr = []
        Appointment.all.each do |x| 
            if x.patient == self 
                appt_arr << x
            end
        end
        appt_arr
    end

    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end

    def doctors
        pat_arr = []
        Appointment.all.each do |x| 
            if x.patient == self 
                pat_arr << x.doctor
            end
        end
        pat_arr
    end

end
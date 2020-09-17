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
        appt_arr = []
        Appointment.all.each do |x| 
            if x.doctor == self 
                appt_arr << x
            end
        end
        appt_arr
    end

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end

    def patients
        pat_arr = []
        Appointment.all.each do |x| 
            if x.doctor == self 
                pat_arr << x.patient
            end
        end
        pat_arr
    end

    

    

end
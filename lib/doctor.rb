class Doctor

    attr_accessor :name, :appointments, :patients

    @@all = []


    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self )
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select {|item| item.doctor == self}
    end

    def patients
        Appointment.all.collect {|appointment| appointment.patient}
    end

end
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

    def new_appointment(patient, date)
        Appointment.new(patient, self, date)
    end

    def appointments
        Appointment.all.select { |appointment| appointment.doctor == self }
        #go through all the songs (SONGS.RB) in the world and SELECT the ones that match me (the current artist)
        
    end

    def patients
        appointments.map { |appointment| appointment.patient}
        
    end
end
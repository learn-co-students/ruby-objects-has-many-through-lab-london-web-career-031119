require "pry"

class Patient

    attr_accessor :name, :appointments, :doctors

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end


    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end


    def appointments
        Appointment.all.select {|item| item.patient == self}
    end

    def doctors
        Appointment.all.collect {|item| item.doctor}
    end



end
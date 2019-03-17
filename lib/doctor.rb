require "pry"

class Doctor
 
@@all = [] #> in this array we are holding class instances. 
attr_reader :name , :doctor 
attr_accessor :new_appointment, :appointments
    def initialize(name)
        @name = name #Doctor.new('The Doctor')
         @@all << self 
    end
    
    def self.all 
        @@all
    end
#every appointment made will hold information of who the doctor is and who the patient is. 
def new_appointment(patient,date)
    Appointment.new(date,patient,self)
end
    #binding.pry

    def appointments
     Appointment.all.select {|x| x.doctor == self}
    end


def patients
    appointments.map{ |x| x.patient}
end

end
#binding.pry
p "He"
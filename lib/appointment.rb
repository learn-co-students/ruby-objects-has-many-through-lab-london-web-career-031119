require "pry"

class Appointment

@@all = [] #>every instance created goes into our Class object

attr_accessor :date, :patient, :doctor#>same as def date @date end 
def initialize(date,patient,doctor)
    @date =date
    @patient = patient
    @doctor = doctor 
    @@all << self 
end


def self.all 
    @@all
end


end
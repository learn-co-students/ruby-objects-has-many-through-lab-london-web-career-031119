require 'pry'

class Patient

  attr_reader :name

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
    # binding.pry
  end

  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
    # binding.pry

  end

  def doctors
    appointments.map { |app| app.doctor }
    # binding.pry
    #iterates over that doctor's Appointments and collects the patient that belongs to each Appointments

  end

#   def artist
#     Song.all.select
#   end
# binding.pry
  def songs
    Song.all.select {|song| song.genre == self}
    #binding.pry
  end

  def artists
      songs.map {|song| song.artist}
      # binding.pry
  end
end

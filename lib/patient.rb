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

  def new_appointment(doctor, date)
    # given a doctor and date, creates a new appointment belonging to that patient
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select { |appointment| appointment.patient == self}
  end

  # binding.pry
  def doctors
    # has many doctors through appointments
    appointments.map {|appointment| appointment.doctor}
    # binding.pry
  end

end

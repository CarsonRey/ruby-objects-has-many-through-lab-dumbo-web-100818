class Appointment

  attr_reader :doctor, :date, :patient

  @@all = []

  def initialize(date, doctor, patient)
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end

end

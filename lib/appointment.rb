class Appointment 
  attr_accessor :date, :doctor, :patient 
  
  @@all = []
  
  def initialize (date, patient, doctor)
    @date = date
    @doctor = doctor
    @patient = patient 
    @@all << self
  end
  
  def Appointment.all
    @@all
  end
end
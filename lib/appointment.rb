class Appointment 
  attr_accessor :date, :doctor, :patient 
  
  @@all = []
  
  def initialize (date, doctor, patient)
    @date = date
    @doctort = doctor
    @patient = patient 
    @@all << self
  end
  
  def Song.all
    @@all
  end
end
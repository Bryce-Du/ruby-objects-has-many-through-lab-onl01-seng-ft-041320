class Patient 
  attr_reader :name 
  
  @@all = []
  
  def initialize (name)
    @name = name
    @@all << self
  end
  
  def Patient.all
    @@all
  end

  def appointments 
    Appointment.all.select {|appointment| appointment.patient == self}
  end
  
  def doctors
    appointments.map {|appointment| appointment.doctor}
  end
  
  def new_appointment (date, doctor)
    Appointment.new(date, doctor, self)
  end
end
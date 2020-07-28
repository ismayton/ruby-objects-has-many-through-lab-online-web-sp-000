class Doctor 
  
  attr_reader :name
  
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @@all << self
  end 
  
  def self.all
    @@all
  end 
  
  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end 
  
  def appoitnments
    Appointment.all.select {|appt| appt.doctor == self}
  end 
  
  def patients
    self.appoitnments.collect {|appt| appt.patient} 
  end 
end 
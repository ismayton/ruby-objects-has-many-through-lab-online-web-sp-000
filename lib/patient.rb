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
  
  def appointments
    Appointment.all.select {|appt| appt.patient == self} 
  end 
  
  def doctors 
    self.appointments.collect {|appt| appt.doctor}
  
  
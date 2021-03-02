class Patient
  attr_accessor :name, :doctor, :appointment
  @@all = []
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all
    @@all
  end 
  
  def appointments
    
  
  def new_appointment(date, doctor)
    Appointment.new(date, doctor, self)
  end 
  
end 
class Appointment
    @@all =[]
    def self.all
        @@all
    end

    attr_accessor :date, :patient, :doctor
    def initialize(date, patient, doctor)
        @date = date
        @patient = patient
        @doctor = doctor
        self.class.all.push(self)
    end
end
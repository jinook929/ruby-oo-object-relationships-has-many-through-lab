class Doctor
    @@all =[]
    def self.all
        @@all
    end

    attr_accessor :name
    def initialize(name)
        @name = name
        self.class.all.push(self)
    end

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select {|appointment| appointment.doctor == self}
    end

    def patients
        self.appointments.each_with_object([]) {|appointment, arr| arr.push(appointment.patient)}.uniq
    end
end
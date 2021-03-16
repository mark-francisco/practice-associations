class Meeting < ApplicationRecord
  
  has_many :appointments

  # def appointments
  #   Appointment.where(:meeting_id => id)
  # end

  has_many :speakers, :through => :appointments

  # def speakers
  #   appts = Appointment.where(:meeting_id => id)
  #   speakers = appts.map { |appt|
  #     Speaker.find_by(:id => appt.speaker_id)
  #   }
  # end

end

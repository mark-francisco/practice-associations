class Speaker < ApplicationRecord
  validates :first_name, :length => { :minimum => 2 }
  validates :last_name, :length => { :minimum => 2 }
  validates :email, :presence => true

  # I AM THE FOLLOWER in this association. Self-join on speakers table.
  has_many :influencer_relationships, :class_name => "SpeakerRelationship", :foreign_key => "follower_id"
  has_many :influencers, :through => :influencer_relationships, :source => :influencer

  # I AM THE INFLUENCER in this association. Self-join on speakers table.
  has_many :follower_relationships, :class_name => "SpeakerRelationship", :foreign_key => "influencer_id"
  has_many :followers, :through => :follower_relationships, :source => :follower


  has_many :appointments
  
  # def appointments
  #   Appointment.where(:speaker_id => id)
  # end

  has_many :meetings, :through => :appointments

  # def meetings
  #   appts = Appointment.where(:speaker_id => id)
  #   meetings = appts.map { |appt|
  #     Meeting.find_by(:id => appt.meeting_id)
  #   }
  # end

end

class SpeakerRelationship < ApplicationRecord
  belongs_to :influencer, :class_name => "Speaker"
  belongs_to :follower, :class_name => "Speaker"

end

class CreateSpeakerRelationships < ActiveRecord::Migration[6.1]
  def change
    create_table :speaker_relationships do |t|
      t.integer :influencer_id
      t.integer :follower_id

      t.timestamps
    end
  end
end

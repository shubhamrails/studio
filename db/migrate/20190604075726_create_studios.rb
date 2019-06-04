class CreateStudios < ActiveRecord::Migration[5.2]
  def change
    create_table :studios do |t|
      t.references :user
      t.string     :name,             null: false
      t.text       :description,      null: false
      t.integer    :min_booking_time, null: false
      t.text       :past_clients
      t.text       :audio_samples
      t.time       :opening_time,     null: false
      t.references :studio_type
      t.time       :closing_time,     null: false
      t.text       :amenities,        null: false
      t.text       :main_equipment,   null: false
      t.text       :rules,            null: false
      t.text       :address,          null: false
      t.string     :landmark,         default: ''
      t.string     :lat,              null: false
      t.string     :lng,              null: false
      t.float      :price_per_hour,   null: false
      t.boolean    :aud_eng_included, null: false
      t.timestamps
    end
  end
end

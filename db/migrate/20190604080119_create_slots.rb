class CreateSlots < ActiveRecord::Migration[5.2]
  def change
    create_table :slots do |t|
      t.references :booking
      t.date :date , null: false
      t.time :from , null: false
      t.time :to   , null: false
      t.timestamps
    end
  end
end

class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.references :studio
      t.attachment :picture
      t.timestamps
    end
  end
end

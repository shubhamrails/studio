class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user
      t.references :studio
      t.integer :status,         null: false
      t.text    :message
      t.string  :card_holder_name, null: false
      t.string  :country,          null: false
      t.text    :billing_address,  null: false
      t.string  :postal_code,      null: false
      t.string  :city,             null: false
      t.string  :state
      t.string  :card_number
      t.string  :expiry_month
      t.string  :expiry_year
      t.string  :cvv
      t.float   :sub_total,      null: false
      t.float   :studiotime_fee, null: false
      t.timestamps
    end
  end
end

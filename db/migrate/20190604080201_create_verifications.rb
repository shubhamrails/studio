class CreateVerifications < ActiveRecord::Migration[5.2]
  def change
    create_table :verifications do |t|
      t.references :user
      t.string     :token
      t.datetime   :expires_at
      t.integer    :kind
      t.timestamps
    end
  end
end

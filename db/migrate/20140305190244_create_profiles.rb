class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :photo
      t.string :header
      t.string :name
      t.string :location
      t.string :website
      t.integer :user_id
      t.text :bio

      t.timestamps
    end
  end
end

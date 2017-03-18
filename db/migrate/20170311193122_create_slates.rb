class CreateSlates < ActiveRecord::Migration[5.0]
  def change
    create_table :slates do |t|
      t.string :name
      t.string :election_cycle
      t.integer :user_id

      t.timestamps
    end
  end
end

class CreateIssues < ActiveRecord::Migration[5.0]
  def change
    create_table :issues do |t|
      t.integer :slate_id
      t.string :name
      t.string :choices
      t.string :recommendation

      t.timestamps
    end
  end
end

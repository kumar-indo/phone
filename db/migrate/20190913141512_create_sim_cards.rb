class CreateSimCards < ActiveRecord::Migration[6.0]
  def change
    create_table :sim_cards do |t|
      t.integer :number, null: false

      t.timestamps
    end
  end
end

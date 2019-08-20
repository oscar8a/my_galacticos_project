class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.string :position
      t.date :dob
      t.string :nationality

      t.timestamps
    end
  end
end

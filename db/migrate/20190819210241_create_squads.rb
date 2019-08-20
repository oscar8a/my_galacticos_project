class CreateSquads < ActiveRecord::Migration[5.2]
  def change
    create_table :squads do |t|
      t.string :name
      t.string :location
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end

class CreatePlayerSquads < ActiveRecord::Migration[5.2]
  def change
    create_table :player_squads do |t|
      t.belongs_to :player, foreign_key: true
      t.belongs_to :squad, foreign_key: true

      t.timestamps
    end
  end
end

class CreateTeamLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :team_likes do |t|
      t.references :team, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

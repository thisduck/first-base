class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :name
      t.string :gender
      t.string :email

      t.timestamps
    end
  end
end

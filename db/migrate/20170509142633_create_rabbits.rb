class CreateRabbits < ActiveRecord::Migration
  def change
    create_table :rabbits do |t|
      t.string :name
      t.string :breed
      t.timestamps
    end
  end
end

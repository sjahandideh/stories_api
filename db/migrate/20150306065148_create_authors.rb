class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name, null: false
      t.string :nick_name, null: false

      t.timestamps null: false
    end
  end
end

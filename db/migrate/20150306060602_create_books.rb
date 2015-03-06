class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.string :lang, default: 'en'
      t.text   :genres, array: true, default: []

      t.timestamps null: false
    end
  end
end

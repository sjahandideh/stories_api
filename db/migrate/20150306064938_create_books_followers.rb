class CreateBooksFollowers < ActiveRecord::Migration
  def change
    create_table :books_followers, id: false do |t|
      t.belongs_to :book,     index: true
      t.belongs_to :follower, index: true
    end
  end
end

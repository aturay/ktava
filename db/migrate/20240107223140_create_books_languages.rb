class CreateBooksLanguages < ActiveRecord::Migration[7.1]
  def change
    create_join_table :books, :languages do |t|
      t.index [:book_id, :language_id]
      t.index [:language_id, :book_id]
    end
  end
end

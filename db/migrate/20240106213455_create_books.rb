class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :uuid
      t.string :isbn
      t.string :title
      t.text :description
      t.integer :pages_count
      t.string :publisher
      t.string :publisher_address
      t.date :publication_date
      t.integer :release
      t.string :bbk
      t.string :publication_license_url
      t.string :review_url
      t.string :avatar_url
      t.integer :views_count

      t.references :source, foreign_key: true

      t.timestamps
    end
  end
end

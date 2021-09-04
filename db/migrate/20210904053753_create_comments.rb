class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.text :body
      t.timestamps
    end

    add_reference :comments, :post, null: false, foreign_key: true
    add_reference :comments, :user, null: false, foreign_key: true
  end
end

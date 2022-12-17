class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :service, null: false, foreign_key: true
      t.integer :rating
      t.text :body

      t.timestamps
    end
  end
end

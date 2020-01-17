class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :user, foreign_key: true
      t.text :comment
      t.references :commentable, polymorphic: true

      t.timestamps
    end
  end
end

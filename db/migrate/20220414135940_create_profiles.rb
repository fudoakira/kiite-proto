class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :image
      t.string :image_cache
      t.string :nickname, null: false
      t.string :comment
      t.text :content
      t.string :twitter
      t.string :instagram
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end

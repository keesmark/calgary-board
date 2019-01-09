class CreateClassifieds < ActiveRecord::Migration[5.0]
  def change
    create_table :classifieds do |t|
      t.references :user, foreign_key: true
      t.references :area, foreign_key: true
      t.references :category, foreign_key: true
      t.string :title
      t.string :tel
      t.string :image_1
      t.string :image_2
      t.string :image_3
      t.string :image_4
      t.text :content

      t.timestamps
    end
  end
end

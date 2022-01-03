class CreatePhotos < ActiveRecord::Migration[6.1]
  def change
    create_table :photos do |t|
      t.string :path
      t.references :property

      t.timestamps
    end
  end
end

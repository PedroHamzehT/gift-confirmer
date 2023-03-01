class CreateGifts < ActiveRecord::Migration[7.0]
  def change
    create_table :gifts do |t|
      t.string :name
      t.boolean :selected

      t.timestamps
    end
  end
end

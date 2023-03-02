class CreateGifts < ActiveRecord::Migration[7.0]
  def change
    create_table :gifts do |t|
      t.string :name
      t.boolean :selected, default: false

      t.timestamps
    end
  end
end

class CreateMarkus < ActiveRecord::Migration
  def change
    create_table :markus do |t|
      t.text :post
      t.string :weight
      t.string :height
      t.string :month
      t.string :photo

      t.timestamps
    end
  end
end

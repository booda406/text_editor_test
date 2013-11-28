class CreateCktests < ActiveRecord::Migration
  def change
    create_table :cktests do |t|
      t.text :content

      t.timestamps
    end
  end
end

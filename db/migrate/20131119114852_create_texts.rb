class CreateTexts < ActiveRecord::Migration
  def change
    create_table :texts do |t|
      t.text :description

      t.timestamps
    end
  end
end

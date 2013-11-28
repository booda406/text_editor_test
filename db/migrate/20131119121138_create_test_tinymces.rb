class CreateTestTinymces < ActiveRecord::Migration
  def change
    create_table :test_tinymces do |t|
      t.text :tinymce

      t.timestamps
    end
  end
end

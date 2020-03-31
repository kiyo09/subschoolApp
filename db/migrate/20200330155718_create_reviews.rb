class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :content
      t.float :rate
      t.integer :subschool_id
      t.timestamps
    end
  end
end

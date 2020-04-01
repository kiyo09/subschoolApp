class CreateStagRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :stag_relations do |t|
      t.references :stag
      t.references :subschool
      t.timestamps
    end
  end
end

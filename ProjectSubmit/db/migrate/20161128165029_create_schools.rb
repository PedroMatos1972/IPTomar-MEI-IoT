class CreateSchools < ActiveRecord::Migration[5.0]
  def change
    create_table :schools do |t|
      t.integer :identification
      t.text :descricao

      t.timestamps
    end
  end
end

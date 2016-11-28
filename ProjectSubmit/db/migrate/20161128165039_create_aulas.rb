class CreateAulas < ActiveRecord::Migration[5.0]
  def change
    create_table :aulas do |t|
      t.integer :identification
      t.text :descricao

      t.timestamps
    end
  end
end

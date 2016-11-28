class CreateFicheiros < ActiveRecord::Migration[5.0]
  def change
    create_table :ficheiros do |t|
      t.integer :identification
      t.text :descricao
      t.date :date
      t.text :local

      t.timestamps
    end
  end
end

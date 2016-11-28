class CreateDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :documents do |t|
      t.integer :identification
      t.text :description
      t.date :date
      t.text :local

      t.timestamps
    end
  end
end

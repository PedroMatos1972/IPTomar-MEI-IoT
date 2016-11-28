class CreateProjetos < ActiveRecord::Migration[5.0]
  def change
    create_table :projetos do |t|
      t.integer :identification
      t.text :title
      t.text :resume
      t.text :tag
      t.date :date
      t.integer :class
      t.integer :school
      t.integer :users
      t.text :ficheiro

      t.timestamps
    end
  end
end

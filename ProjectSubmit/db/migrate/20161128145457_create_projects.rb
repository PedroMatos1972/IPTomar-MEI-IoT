class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.integer :identification
      t.text :title
      t.text :resume
      t.text :tag
      t.date :date
      t.integer :course
      t.integer :school
      t.integer :users
      t.text :document

      t.timestamps
    end
  end
end

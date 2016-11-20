class CreateProjetos < ActiveRecord::Migration[5.0]
  def change
    create_table :projetos do |t|
      t.string :titulo
      t.string :resume

      t.timestamps
    end
  end
end

class DropProjectosTable < ActiveRecord::Migration
  def up
    drop_table :projetos
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
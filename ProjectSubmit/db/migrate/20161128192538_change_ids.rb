class ChangeIds < ActiveRecord::Migration[5.0]
 	change_table :projetos do |t|
  		t.remove :identification
	end

	change_table :aulas do |t|
  		t.remove :identification
	end

	change_table :ficheiros do |t|
  		t.remove :identification
	end

	change_table :tags do |t|
  		t.remove :identification
	end

	change_table :schools do |t|
  		t.remove :identification
	end

	change_table :utilizadors do |t|
  		t.remove :identification
	end

	change_table :utiltypes do |t|
  		t.remove :identification
	end
end

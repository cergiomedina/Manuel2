class CreateGrupos < ActiveRecord::Migration
  def change
    create_table :grupos do |t|
      t.integer :grupo_id , :null => false

      t.timestamps null: false
    end
  end
end

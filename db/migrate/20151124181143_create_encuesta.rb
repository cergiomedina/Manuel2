class CreateEncuesta < ActiveRecord::Migration
  def change
    create_table :encuesta do |t|
      t.integer :encuesta_id, :null => false
      t.boolean :encuesta_estado, :null => false
      t.string :encuesta_nombre, :null => false
      t.string :encuesta_descripcion, :null => false

      t.timestamps null: false
    end
  end
end

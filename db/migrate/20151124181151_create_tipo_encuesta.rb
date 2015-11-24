class CreateTipoEncuesta < ActiveRecord::Migration
  def change
    create_table :tipo_encuesta do |t|
      t.integer :tipo_id, :null => false
      t.string :tipo_nombre, :null => false
      t.string :tipo_descripcion, :null => false

      t.timestamps null: false
    end
  end
end

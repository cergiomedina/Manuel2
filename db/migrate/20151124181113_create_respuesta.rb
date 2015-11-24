class CreateRespuesta < ActiveRecord::Migration
  def change
    create_table :respuesta do |t|
      t.integer :respuesta_id, :null => false
      t.integer :respuesta_valores
      t.date :respuesta_fecha

      t.timestamps null: false
    end
  end
end

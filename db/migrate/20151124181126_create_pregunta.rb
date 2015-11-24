class CreatePregunta < ActiveRecord::Migration
  def change
    create_table :pregunta do |t|
      t.integer :pregunta_id, :null => false
      t.string :pregunta_enunciado, :null => false
      t.string :pregunta_descripcion, :null => false
      t.integer :pregunta_opciones

      t.timestamps null: false
    end
  end
end

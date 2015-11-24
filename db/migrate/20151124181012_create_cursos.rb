class CreateCursos < ActiveRecord::Migration
  def change
    create_table :cursos do |t|
      t.integer :curso_id, :null => false
      t.string :curso_nombre, :null => false
      t.integer :curso_semestre, :null => false
      t.integer :curso_ano, :null => false

      t.timestamps null: false
    end
  end
end

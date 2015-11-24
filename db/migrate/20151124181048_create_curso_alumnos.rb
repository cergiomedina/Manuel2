class CreateCursoAlumnos < ActiveRecord::Migration
  def change
    create_table :curso_alumnos do |t|
      t.integer :c_a_id

      t.timestamps null: false
    end
  end
end

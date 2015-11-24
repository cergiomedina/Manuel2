class CreateAlumnos < ActiveRecord::Migration
  def change
    create_table :alumnos do |t|
      t.integer :alumno_rut, :null => false
      t.string :alumno_nombre, :null => false
      t.string :alumno_apellido
      t.string :alumno_correo, :null => false
      t.string :alumno_contrasena, :null => false

      t.timestamps null: false
    end
  end
end

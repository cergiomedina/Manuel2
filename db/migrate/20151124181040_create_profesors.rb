class CreateProfesors < ActiveRecord::Migration
  def change
    create_table :profesors do |t|
      t.integer :profesor_rut, :null => false
      t.string :profesor_nombre, :null => false
      t.string :profesor_apellido
      t.string :profesor_correo, :null => false
      t.string :profesor_contrasena, :null => false

      t.timestamps null: false
    end
  end
end

class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.integer :feed_id, :null => false
      t.integer :feed_resumen
      t.string :feed_motivo
      t.date :feed_fecha

      t.timestamps null: false
    end
  end
end

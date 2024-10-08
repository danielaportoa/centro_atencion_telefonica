class CreateLlamadas < ActiveRecord::Migration[7.1]
  def change
    create_table :llamadas do |t|
      t.references :cliente, null: false, foreign_key: true
      t.string :motivo
      t.datetime :fecha

      t.timestamps
    end
  end
end

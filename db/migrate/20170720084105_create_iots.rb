class CreateIots < ActiveRecord::Migration
  def change
    create_table :iots do |t|
      t.string :sensor
      t.float :value

      t.timestamps null: false
    end
  end
end

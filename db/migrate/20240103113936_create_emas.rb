class CreateEmas < ActiveRecord::Migration[7.0]
  def change
    create_table :emas do |t|
      t.string :name
      t.text :body

      t.timestamps
    end
  end
end

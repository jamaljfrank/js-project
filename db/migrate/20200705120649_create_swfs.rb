class CreateSwfs < ActiveRecord::Migration[6.0]
  def change
    create_table :swfs do |t|
      t.string :filename
      t.string :made_by
      t.references :tags, null: false, foreign_key: true

      t.timestamps
    end
  end
end

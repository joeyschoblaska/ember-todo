class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :description
      t.boolean :completed, :default => false
      t.integer :priority, :default => 1

      t.timestamps
    end
  end
end

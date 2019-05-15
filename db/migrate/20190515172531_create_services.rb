class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :job
      t.float :price
      t.integer :service_provider_id

      t.timestamps
    end
  end
end

class CreateCitizenNumbers < ActiveRecord::Migration[6.0]
  def change
    create_table :citizen_numbers do |t|
      t.string :number

      t.timestamps
    end
  end
end

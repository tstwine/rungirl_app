class CreateDistances < ActiveRecord::Migration
  def change
    create_table :distances do |t|
      t.string :time
      t.string :date
    end
  end
end

class CreatePathTrains < ActiveRecord::Migration
  def change
    create_table :path_trains do |t|

      t.timestamps
    end
  end
end

class CreateAuteurs < ActiveRecord::Migration
  def change
    create_table :auteurs do |t|

      t.timestamps
    end
  end
end

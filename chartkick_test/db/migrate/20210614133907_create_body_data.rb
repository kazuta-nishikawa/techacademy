class CreateBodyData < ActiveRecord::Migration[5.2]
  def change
    create_table :body_data do |t|
      t.float :weight
      t.float :fat
      t.date :date

      t.timestamps
    end
  end
end

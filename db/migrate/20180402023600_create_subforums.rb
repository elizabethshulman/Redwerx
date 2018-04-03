class CreateSubforums < ActiveRecord::Migration
  def change
    create_table :subforums do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end

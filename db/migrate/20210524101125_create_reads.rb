class CreateReads < ActiveRecord::Migration[6.0]
  def change
    create_table :reads do |t|
      t.references :user, foreign_key: true
      t.references :content, foreign_key: true
      t.timestamps
    end
  end
end

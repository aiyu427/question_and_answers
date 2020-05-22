class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.references :issue, null: false
      t.string :caption
      t.text :question
      t.text :explanation
      t.integer :score, null:false, default: 0
      t.integer :sort_number

      t.integer    :deleted_by,                     comment: '削除者ID'
      t.integer    :created_by,                     comment: '作成者ID'
      t.integer    :updated_by,                     comment: '更新者ID'
      t.datetime   :deleted_at,                     comment: '削除日時'
      t.timestamps
    end
  end
end

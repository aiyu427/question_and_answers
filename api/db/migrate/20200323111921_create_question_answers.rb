class CreateQuestionAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :question_answers do |t|
      t.references :question, null: false
      t.text :answer, null: false
      t.boolean :correct, default: false

      t.integer    :deleted_by,                     comment: '削除者ID'
      t.integer    :created_by,                     comment: '作成者ID'
      t.integer    :updated_by,                     comment: '更新者ID'
      t.datetime   :deleted_at,                     comment: '削除日時'
      t.timestamps
    end
  end
end

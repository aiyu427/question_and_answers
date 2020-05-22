class CreateIssues < ActiveRecord::Migration[5.0]
  def change
    create_table :issues do |t|
      t.string :title, null: false
      t.boolean :display_flag, null: false, default: true

      t.integer    :deleted_by,                     comment: '削除者ID'
      t.integer    :created_by,                     comment: '作成者ID'
      t.integer    :updated_by,                     comment: '更新者ID'
      t.datetime   :deleted_at,                     comment: '削除日時'
      t.timestamps
    end
  end
end

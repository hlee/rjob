class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.references :job_post

      t.timestamps
    end
    add_index :comments, :job_post_id
  end
end

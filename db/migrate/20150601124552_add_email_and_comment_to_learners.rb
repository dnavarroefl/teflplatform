class AddEmailAndCommentToLearners < ActiveRecord::Migration
  def change
    add_column :students, :email, :string
    add_column :students, :comment, :string
  end
end

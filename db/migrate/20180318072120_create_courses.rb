class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :from_cur
      t.string :to_cur
      t.float  :course
      t.timestamps
    end
  end
end

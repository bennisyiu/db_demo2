class AddTimeToCourses < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :time, :time
  end
end

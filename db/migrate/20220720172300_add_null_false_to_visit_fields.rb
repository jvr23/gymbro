class AddNullFalseToVisitFields < ActiveRecord::Migration[7.0]
  def change
    change_column_null :reviews, :review, false
  end
end

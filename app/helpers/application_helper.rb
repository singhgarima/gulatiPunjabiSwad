module ApplicationHelper
  def table_row_class(index)
     index.odd? ? "even" : "odd"
  end
end

class BookSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :author, :published_year, :genre, :stock
end

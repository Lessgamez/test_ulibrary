class BookSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :author, :genre, :stock, :published_year
end

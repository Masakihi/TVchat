class Post < ApplicationRecord
  validates :content, {presence: true, length:{maximum: 200}}
  validates :page_id, {presence: true}
end

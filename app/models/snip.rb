class Snip < ActiveRecord::Base
  has_many :snippets
  accepts_nested_attributes_for :snippets, :allow_destroy => true
end

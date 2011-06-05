class Snip < ActiveRecord::Base
  belongs_to :user
  has_many :snippets
  accepts_nested_attributes_for :snippets, :reject_if => lambda {|a| a[:content].blank?}, :allow_destroy => true
end

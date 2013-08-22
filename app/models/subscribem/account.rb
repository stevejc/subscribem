module Subscribem
  class Account < ActiveRecord::Base
    attr_accessible :name, :subdomain, :owner_attributes
    belongs_to :owner, :class_name => "Subscribem::User"
    accepts_nested_attributes_for :owner
  end
end

class Mark < ActiveRecord::Base
  enum status: [:reading, :read]

  belongs_to :user
  belongs_to :book
end

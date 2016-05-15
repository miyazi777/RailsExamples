class Dept < ActiveRecord::Base
  has_many :users, dependent: :destroy
end

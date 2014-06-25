class Member < ActiveRecord::Base
validates :phone_number, presence: true,
    numericality: { only_integer: true,
       greater_than: 999, less_than: 10000, allow_blank: true },
    uniqueness: true
end

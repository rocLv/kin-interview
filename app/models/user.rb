class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: { maximum: 30 },
    format: { with: /\A([a-z0-9\._]+)\z/ }
end

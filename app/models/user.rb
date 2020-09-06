class User < ApplicationRecord
  extend Enumerize
  enumerize :gender, in: { other: 0, male: 1, female: 2 }
  # enumerize :gender, in: [:other, :male, :female], default: :other
end

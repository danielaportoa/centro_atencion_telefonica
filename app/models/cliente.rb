class Cliente < ApplicationRecord
  has_many :llamadas, dependent: :destroy
end

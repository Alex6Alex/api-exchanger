class Currency < ApplicationRecord
  has_one :reserve, dependent: :destroy

  def self.example
    create(name: 'dddd', code: 'ERE')
  end
end

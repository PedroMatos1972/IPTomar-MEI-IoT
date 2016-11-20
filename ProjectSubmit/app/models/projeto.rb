class Projeto < ApplicationRecord
	has_many :comments, dependent: :destroy
	validates :titulo, presence: true, length: { minimum: 5 }
end

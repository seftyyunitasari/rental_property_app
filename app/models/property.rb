class Property < ApplicationRecord
	has_many :stations, dependent: :destroy
	accepts_nested_attributes_for :stations, allow_destroy: true, update_only: true, reject_if: :reject_stations

	def reject_stations(attributes)
		attributes['railway'].blank?
	end
end

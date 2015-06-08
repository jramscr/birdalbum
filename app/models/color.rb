class Color < ActiveRecord::Base
  has_many :species_colors
  has_many :species, through: :species_colors

  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |kind|
        csv << kind.attributes.values_at(*column_names)
      end
    end
  end
end

class PictureByBeakType < ActiveRecord::Base
  belongs_to :beak_type
  belongs_to :picture

  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |kind|
        csv << kind.attributes.values_at(*column_names)
      end
    end
  end
end

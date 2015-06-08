class Contact < ActiveRecord::Base
  has_one :contact_type
  has_many :contact_by_people
  has_many :persons, through: :contact_by_people

  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |kind|
        csv << kind.attributes.values_at(*column_names)
      end
    end
  end
end

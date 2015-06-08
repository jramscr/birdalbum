class UserType < ActiveRecord::Base
  has_one :user

  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |kind|
        csv << kind.attributes.values_at(*column_names)
      end
    end
  end
end

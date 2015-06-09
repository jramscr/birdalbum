class Kind < ActiveRecord::Base
  has_one :order

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Kind.create!(name: row[0])
    end
  end

  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |kind|
        csv << kind.attributes.values_at(*column_names)
      end
    end
  end
end

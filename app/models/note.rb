class Note < ApplicationRecord
    belongs_to :candidate
    require 'csv'  
    
    
    def self.import(file)
        CSV.foreach(file.path, { encoding: "UTF-8", headers: true, header_converters: :symbol, converters: :all}) do |row|
            Note.create! row.to_hash
        end
    end
end

module Seed 
  def self.run
      5.times do |n|
          Receipt.new(business_name: "arya loves flowers-#{rand(1..14)}", url: "https://aryalovesflowers.com", upload_date: Date.today + rand(1..4).day)
      end
  end
end



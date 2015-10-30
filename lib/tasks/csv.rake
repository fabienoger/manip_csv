require "csv"

namespace :csv do
  desc "TODO"
  task display: :environment do
    path = Rails.root.join("public", "assets", "extrait_csv", "rex", "REX_Incidents.csv")
    data = []
    puts "#{path}".red
    CSV.foreach(path, col_sep: ";", encoding: "iso-8859-15") do |row|
      data.push(row)
      row.each.with_index do |c, index|
        puts row[index].to_s.blue
      end
      puts "================================".red
      puts "#{data[0]}".yellow
      puts "================================".red
    end
  end

  desc "TODO"
  task join: :environment do
    puts "join".blue
  end

  desc "TODO"
  task import: :environment do
    puts "import".light_blue
  end

end

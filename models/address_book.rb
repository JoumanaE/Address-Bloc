require_relative 'entry'
require "csv"

class AddressBook
  attr_accessor :entries

  def initialize
    @entries = []
  end
  def add_entry(name, phone_number, email)
    index = 0
    @entries.each do |entry|
      if name < entry.name
        break
      end
      index +=1
    end

    @entries.insert(index, Entry.new(name, phone_number, email))
end

def import_from_csv(file_name)
  csv_text = File.read(file_name)
  csv = CSV.parse(csv_text, headers: true, skip_blanks: true)

  csv.each do |row|
    row_hash = row.to_hash
    add_entry(row_hash["name"], row_hash["phone_number"], row_hash["email"])
  def remove_entry(name, phone_number, email)
    @entries.each do |entry|
      if entry.name == name && entry.phone_number == phone_number && entry.email == email
        @entries.delete(entry)
        break
      end
    end
  end
end

require_relative 'entry'
require "csv"

class AddressBook
  attr_accessor :entries

  def initialize
    @entries = []
  end

  def add_entry(name, phone, email)
    index = 0
    @entries.each do |entry|
      if name < entry.name
        break
      end
      index +=1
    end
    @entries.insert(index, Entry.new(name, phone, email))
  end

  def import_from_csv(file_name)
    #Implementation goes here
  end
end

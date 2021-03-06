require_relative '../models/address_book'

class MenuController
   attr_accessor :address_book

   def initialize
      @address_book = AddressBook.new
    end

   def main_menu
     puts "Main Menu - #{@address_book.entries.count} entries"
     puts "1 - View all entries"
     puts "2 - Create an entry"
     puts "3 - Search for an entry"
     puts "4 - View entry Number n"
     puts "5 - Import entries from a CSV"
     puts "6 - Exit"
     print "Enter your selection: "

     selection = gets.to_i
     puts "You picked #{selection}"
   end
 end
 case selection
 when 1
   system "clear"
   view_all_entries
   main_menu
 when 2
   system "clear"
   create_entry
   main_menu
 when 3
   system "clear"
   search_entries
   main_menu
 when 4
   system "clear"
   view_entry_n
   main_menu
 when 5
   system "clear"
   read_csv
   main_menu
 when 6
   puts "Good-bye!"
   exit(0)
 else
   system "clear"
    puts "Sorry, that is not a valid input"
    main_menu
  end
end
def view_all_entries
    @address_book.entries.each do |entry|
    system "clear"
    puts entry.to_s
    entry_submenu(entry)
  end

def view_entry_n(n)
    @address_book.entries.each do |entry| do
      gets.to_n
      if @address_book.entries.count = n
        puts "You chose #{entry}"
      else
        puts "Entry not valid, try again"
      end
      end
    end

 def create_entry
    system"clear"
    puts" NewAddressBloc Entry"
    print "Name:"
    phone=gets.chomp
    print "Email: "
    email = gets.chomp
    @address_book.add_entry(name, phone, email)
    system "clear"
    puts "New entry created"
  end

 def search_entries
    @address_book.entries.each do |entry|
      system "clear"
      puts entry.to_s
 end
    def endentry_submenu(entry)
        puts "n - next entry"
        puts "d - delete entry"
        puts "e - edit this entry"
        puts "m - return to main menu"

        selection = gets.chomp
        case selection
        when "n"
        when "d"
        when "e"
        when "m"
          system "clear"
          main_menu
        else
          system "clear"
          puts "#{selection} is not a valid input"
          entries_submenu(entry)
        end
      end
    system "clear"
    puts "End of entries"
  end
  end
   def demolish(entry)
      @address_book.entries.each do |entry|
        @address_book.entries.delete(entry)
        puts " All entries deleted"
      end
   end
  def read_csv
  end
end

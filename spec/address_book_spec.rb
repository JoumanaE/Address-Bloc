require_relative '../models/address_book'

RSpec.describe AddressBook do
  let(:book) {AddressBook.new }

  def check_entry(entry, expect_name, expected_number, expected_email)
    expect(entry.name).to eql expected_name
    expect(entry.phone_number).to eql expected_number
    expect(entry.email).to eql expected_email
  end

  describe "attributes" do
    it "should respond to entries" do
      book = AddressBook.new
      expect(book).to respond_to(:entries)
    end

    it "should initialize entries as an array" do
      book = AddressBook.new
      expect (book.entries).to be_a(Array)
    end

    it "should initialize entries as empty" do
      book = AddressBook.new
      expect(book.entries.size).to eq 0
    end
  end

  describe "#add_entry" do
    it "adds only one entry to the address book" do
      book = AddressBook.new
      book.add_entry('Ada Lovelace', '010.012/1815', 'augusta.king@lovelace.com')

      expect(book.entries.size).to eq 1
    end
    it "adds the correct information to entries" do
      book = AddressBook.new
      book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
      new_entry = book.entries[0]
      expect(new_entry.name).to eq 'Ada Lovelace'
      expect(new_entry.phone_number).to eq '010.012.1815'
      expect(new_entry.email).to eq 'augusta.king@lovelace.com'
    end
  end
# Test that AddressBook's .import_from_csv() method is working as expected
  describe "#import_from_csv" do
    it "imports the correct number of entries" do
# #3
     book.import_from_csv("entries.csv")
     book_size = book.entries.size

    # Check the size of the entries in AddressBook
     expect(book_size).to eql 5
   end
   it "imports the 1st entry" do
     book.import_from_csv("entries.csv")
     #check the first entry
     entry_one = book.entries[0]

     # #5
     expect(entry_one.name).to eql "Bill"
     expect(entry_one.phone_number).to eql "555-555-48854"
     expect(entry_one.email).to eql "bill@blocmail.com"
      end

      it "imports the 2nd entry" do
         book.import_from_csv("entries.csv")
         # Check the second entry
         entry_two = book.entries[1]
         expect(entry_two.name).to eql "Bob"
         expect(entry_two.phone_number).to eql "555-555-5415"
         expect(entry_two.email).to eql "bob@blocmail.com"
       end

       it "imports the 3rd entry" do
         book.import_from_csv("entries.csv")
         # Check the third entry
         entry_three = book.entries[2]
         expect(entry_three.name).to eql "Joe"
         expect(entry_three.phone_number).to eql "555-555-3660"
         expect(entry_three.email).to eql "joe@blocmail.com"
       end

       it "imports the 4th entry" do
         book.import_from_csv("entries.csv")
         # Check the fourth entry
         entry_four = book.entries[3]
         expect(entry_four.name).to eql  "Sally"
         expect(entry_four.phone_number).to eql "555-555-4646"
         expect(entry_four.email).to eql "sally@blocmail.com"
       end

       it "imports the 5th entry" do
         book.import_from_csv("entries.csv")
         # Check the fifth entry
         entry_five = book.entries[4]
         expect(entry_five.name).to eql "Sussie"
         expect(entry_five.phone_number).to eql "555-555-2036"
         expect(entry.email).to eql "sussie@blocmail.com"
       end
 end
end
require_relative '../models/address_book'

RSpec.describe AddressBook do
  let(:book) {AddressBook.new }

  def check_entry(entry, expect_name, expected_number, expected_email)
    expect(entry.name).to eql expected_name
    expect(entry.phone_number).to eql expected_number
    expect(entry.email).to eql expected_email
  end

  describe "attributes" do
    it "should respond to entries" do
      book = AddressBook.new
      expect(book).to respond_to(:entries)
    end

    it "should initialize entries as an array" do
      book = AddressBook.new
      expect (book.entries).to be_a(Array)
    end

    it "should initialize entries as empty" do
      book = AddressBook.new
      expect(book.entries.size).to eq 0
    end
  end

  describe "#add_entry" do
    it "adds only one entry to the address book" do
      book = AddressBook.new
      book.add_entry('Ada Lovelace', '010.012/1815', 'augusta.king@lovelace.com')

      expect(book.entries.size).to eq 1
    end
    it "adds the correct information to entries" do
      book = AddressBook.new
      book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
      new_entry = book.entries[0]
      expect(new_entry.name).to eq 'Ada Lovelace'
      expect(new_entry.phone_number).to eq '010.012.1815'
      expect(new_entry.email).to eq 'augusta.king@lovelace.com'
    end
  end
# Test that AddressBook's .import_from_csv() method is working as expected
  describe "#import_from_csv" do
    it "imports the correct number of entries" do
# #3
     book.import_from_csv("entries.csv")
     book_size = book.entries.size

    # Check the size of the entries in AddressBook
     expect(book_size).to eql 5
    end

    it "imports the 1st entry" do
     book.import_from_csv("entries.csv")
     #check the first entry
     entry_one = book.entries[0]

     # #5
     expect(entry_one.name).to eql "Bill"
     expect(entry_one.phone_number).to eql "555-555-48854"
     expect(entry_one.email).to eql "bill@blocmail.com"
    end

    it "imports the 2nd entry" do
       book.import_from_csv("entries.csv")
       # Check the second entry
       entry_two = book.entries[1]
       expect(entry_two.name).to eql "Bob"
       expect(entry_two.phone_number).to eql "555-555-5415"
       expect(entry_two.email).to eql "bob@blocmail.com"
     end

     it "imports the 3rd entry" do
       book.import_from_csv("entries.csv")
       # Check the third entry
       entry_three = book.entries[2]
       expect(entry_three.name).to eql "Joe"
       expect(entry_three.phone_number).to eql "555-555-3660"
       expect(entry_three.email).to eql "joe@blocmail.com"
     end

     it "imports the 4th entry" do
       book.import_from_csv("entries.csv")
       # Check the fourth entry
       entry_four = book.entries[3]
       expect(entry_four.name).to eql  "Sally"
       expect(entry_four.phone_number).to eql "555-555-4646"
       expect(entry_four.email).to eql "sally@blocmail.com"
     end

     it "imports the 5th entry" do
       book.import_from_csv("entries.csv")
       # Check the fifth entry
       entry_five = book.entries[4]
       expect(entry_five.name).to eql "Sussie"
       expect(entry_five.phone_number).to eql "555-555-2036"
       expect(entry.email).to eql "sussie@blocmail.com"
     end
  end

  describe "#email_finder(name)" do
    it "returns an email if an entry matches the name we are looking for" do
      book.import_from_csv("entries_2.csv")
      expect(book.email_finder('Morgan')).to eq("morgan@blocmail.com")
    end
    it "returns an email if an entry matches the name we are looking for" do
      book.import_from_csv("entries_2.csv")
      expect(book.email_finder('Rya')).to eq("rya@blocmail.com")
    end
  end
end


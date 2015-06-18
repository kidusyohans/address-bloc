
RSpec.describe AddressBook do
  
  context "attributes" do
      
    it "should respond to entries" do
        
      book = AddressBook.new
      
      expect(book).to respond_to(:entries)
        
    end
    it "should initialize entries as an array" do
      book = AddressBook.new
      expect(book.entries).to be_a(Array)
    end
    it "should initialize entries as empty" do
      book = AddressBook.new
      expect(book.entries.size).to eq 0
    end
  end
  
  context ".add_entry" do
    it "adds only one entry to the address book" do 
      book = AddressBook.new  
      book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
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
  
  context ".remove_entry" do
    it "should remove one entry rom the book" do
      book = AddressBook.new
      book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
      book.add_entry('Mike Lovelace', '010.012.1815', 'mike.king@lovelace.com')
      entries_size = book.entries.size
      
      book.remove_entry("Mike Lovelace")
      
      expect(book.entries.size).to eq(entries_size - 1)
    end
  end
end
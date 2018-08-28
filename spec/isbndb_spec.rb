RSpec.describe Isbndb do
  context "finding by isbn" do
    it "works" do
      book = Isbndb.find_by_isbn('9780134093413')["book"]
      expect(book["title"]).to eq("Campbell Biology (11th Edition)")
      expect(book["isbn13"]).to eq('9780134093413')
    end
  end
end

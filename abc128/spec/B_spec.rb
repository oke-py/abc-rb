RSpec.describe 'test' do
  it 'test with "6\nkhabarovsk 20\nmoscow 10\nkazan 50\nkazan 35\nmoscow 60\nkhabarovsk 40\n"' do
    io = IO.popen("ruby abc128/B.rb", "w+")
    io.puts("6\nkhabarovsk 20\nmoscow 10\nkazan 50\nkazan 35\nmoscow 60\nkhabarovsk 40\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n4\n6\n1\n5\n2\n")
  end

  it 'test with "10\nyakutsk 10\nyakutsk 20\nyakutsk 30\nyakutsk 40\nyakutsk 50\nyakutsk 60\nyakutsk 70\nyakutsk 80\nyakutsk 90\nyakutsk 100\n"' do
    io = IO.popen("ruby abc128/B.rb", "w+")
    io.puts("10\nyakutsk 10\nyakutsk 20\nyakutsk 30\nyakutsk 40\nyakutsk 50\nyakutsk 60\nyakutsk 70\nyakutsk 80\nyakutsk 90\nyakutsk 100\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n9\n8\n7\n6\n5\n4\n3\n2\n1\n")
  end

end

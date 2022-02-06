RSpec.describe 'test' do
  it 'test with "8 3\nACACTACG\n3 7\n2 3\n1 8\n"' do
    io = IO.popen("ruby abc122/C.rb", "w+")
    io.puts("8 3\nACACTACG\n3 7\n2 3\n1 8\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n0\n3\n")
  end

end

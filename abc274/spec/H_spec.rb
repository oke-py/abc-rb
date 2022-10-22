RSpec.describe 'test' do
  it 'test with "4 5\n1 2 3 1\n1 3 2 4 1 4\n1 2 2 3 3 4\n1 1 2 2 3 4\n1 2 2 3 3 3\n1 4 1 4 1 1\n"' do
    io = IO.popen("ruby abc274/H.rb", "w+")
    io.puts("4 5\n1 2 3 1\n1 3 2 4 1 4\n1 2 2 3 3 4\n1 1 2 2 3 4\n1 2 2 3 3 3\n1 4 1 4 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("No\nNo\nYes\nNo\nYes\n")
  end

  it 'test with "10 10\n725560240 9175925348 9627229768 7408031479 623321125 4845892509 8712345300 1026746010 4844359340 2169008582\n5 6 5 6 2 6\n5 6 1 2 1 1\n3 8 3 8 1 6\n5 10 1 6 1 7\n3 4 1 2 5 5\n7 10 4 7 2 3\n3 6 1 4 7 9\n4 5 3 4 8 9\n2 6 1 5 5 8\n4 8 1 5 1 9\n"' do
    io = IO.popen("ruby abc274/H.rb", "w+")
    io.puts("10 10\n725560240 9175925348 9627229768 7408031479 623321125 4845892509 8712345300 1026746010 4844359340 2169008582\n5 6 5 6 2 6\n5 6 1 2 1 1\n3 8 3 8 1 6\n5 10 1 6 1 7\n3 4 1 2 5 5\n7 10 4 7 2 3\n3 6 1 4 7 9\n4 5 3 4 8 9\n2 6 1 5 5 8\n4 8 1 5 1 9\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\nYes\nYes\nYes\nNo\nNo\nNo\nNo\nNo\nNo\n")
  end

end

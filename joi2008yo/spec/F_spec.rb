RSpec.describe 'test' do
  it 'test with "3 8\n1 3 1 10\n0 2 3\n1 2 3 20\n1 1 2 5\n0 3 2\n1 1 3 7\n1 2 1 9\n0 2 3\n"' do
    io = IO.popen("ruby joi2008yo/F.rb", "w+")
    io.puts("3 8\n1 3 1 10\n0 2 3\n1 2 3 20\n1 1 2 5\n0 3 2\n1 1 3 7\n1 2 1 9\n0 2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n15\n12\n")
  end

  it 'test with "5 16\n1 1 2 343750\n1 1 3 3343\n1 1 4 347392\n1 1 5 5497\n1 2 3 123394\n1 2 4 545492\n1 2 5 458\n1 3 4 343983\n1 3 5 843468\n1 4 5 15934\n0 2 1\n0 4 1\n0 3 2\n0 4 2\n0 4 3\n0 5 3\n"' do
    io = IO.popen("ruby joi2008yo/F.rb", "w+")
    io.puts("5 16\n1 1 2 343750\n1 1 3 3343\n1 1 4 347392\n1 1 5 5497\n1 2 3 123394\n1 2 4 545492\n1 2 5 458\n1 3 4 343983\n1 3 5 843468\n1 4 5 15934\n0 2 1\n0 4 1\n0 3 2\n0 4 2\n0 4 3\n0 5 3\n")
    io.close_write
    expect(io.readlines.join).to eq("5955\n21431\n9298\n16392\n24774\n8840\n")
  end

end

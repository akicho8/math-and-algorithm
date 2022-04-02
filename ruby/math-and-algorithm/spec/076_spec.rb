RSpec.describe 'test' do
  it 'test with "(No Input)"' do
    IO.popen("ruby #{__dir__}/../076.rb", "w+") do |io|
      io.puts("(No Input)")
      io.close_write
      expect(io.readlines.join).to eq("9 12\n1 2\n2 3\n4 5\n5 6\n7 8\n8 9\n1 4\n4 7\n2 5\n5 8\n3 6\n6 9\n")
    end
  end

  it 'test with "8 7\n1 2\n2 3\n3 4\n4 5\n5 6\n6 7\n7 8\n"' do
    IO.popen("ruby #{__dir__}/../076.rb", "w+") do |io|
      io.puts("8 7\n1 2\n2 3\n3 4\n4 5\n5 6\n6 7\n7 8\n")
      io.close_write
      expect(io.readlines.join).to eq()
    end
  end

end

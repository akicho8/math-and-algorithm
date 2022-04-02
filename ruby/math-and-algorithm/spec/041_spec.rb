RSpec.describe 'test' do
  it 'test with "8 7\n1 5\n1 6\n2 7\n3 7\n4 6\n5 8\n6 8\n"' do
    IO.popen("ruby #{__dir__}/../041.rb", "w+") do |io|
      io.puts("8 7\n1 5\n1 6\n2 7\n3 7\n4 6\n5 8\n6 8\n")
      io.close_write
      expect(io.readlines.join).to eq("Yes\n")
    end
  end

  it 'test with "6 7\n1 6\n2 6\n3 6\n2 4\n3 5\n1 3\n1 4\n"' do
    IO.popen("ruby #{__dir__}/../041.rb", "w+") do |io|
      io.puts("6 7\n1 6\n2 6\n3 6\n2 4\n3 5\n1 3\n1 4\n")
      io.close_write
      expect(io.readlines.join).to eq("No\n")
    end
  end

end

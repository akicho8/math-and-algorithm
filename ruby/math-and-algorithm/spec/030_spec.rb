RSpec.describe 'test' do
  it 'test with "7 3\n1 2 3 4 5 6 7\n"' do
    IO.popen("ruby #{__dir__}/../030.rb", "w+") do |io|
      io.puts("7 3\n1 2 3 4 5 6 7\n")
      io.close_write
      expect(io.readlines.join).to eq("Yes\n")
    end
  end

  it 'test with "7 9\n1 2 3 4 5 6 7\n"' do
    IO.popen("ruby #{__dir__}/../030.rb", "w+") do |io|
      io.puts("7 9\n1 2 3 4 5 6 7\n")
      io.close_write
      expect(io.readlines.join).to eq("No\n")
    end
  end

  it 'test with "7 1\n2 3 4 5 6 7 8\n"' do
    IO.popen("ruby #{__dir__}/../030.rb", "w+") do |io|
      io.puts("7 1\n2 3 4 5 6 7 8\n")
      io.close_write
      expect(io.readlines.join).to eq("No\n")
    end
  end

end

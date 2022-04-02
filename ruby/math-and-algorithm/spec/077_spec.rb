RSpec.describe 'test' do
  it 'test with "4 3 2\n"' do
    IO.popen("ruby #{__dir__}/../077.rb", "w+") do |io|
      io.puts("4 3 2\n")
      io.close_write
      expect(io.readlines.join).to eq("Yes\n")
    end
  end

  it 'test with "16 3 2\n"' do
    IO.popen("ruby #{__dir__}/../077.rb", "w+") do |io|
      io.puts("16 3 2\n")
      io.close_write
      expect(io.readlines.join).to eq("No\n")
    end
  end

  it 'test with "8 3 2\n"' do
    IO.popen("ruby #{__dir__}/../077.rb", "w+") do |io|
      io.puts("8 3 2\n")
      io.close_write
      expect(io.readlines.join).to eq("No\n")
    end
  end

  it 'test with "1000000000000000000 1000000000000000000 1000000000000000000\n"' do
    IO.popen("ruby #{__dir__}/../077.rb", "w+") do |io|
      io.puts("1000000000000000000 1000000000000000000 1000000000000000000\n")
      io.close_write
      expect(io.readlines.join).to eq("Yes\n")
    end
  end

  it 'test with "869120 5 15\n"' do
    IO.popen("ruby #{__dir__}/../077.rb", "w+") do |io|
      io.puts("869120 5 15\n")
      io.close_write
      expect(io.readlines.join).to eq("No\n")
    end
  end

end

RSpec.describe 'test' do
  it 'test with "100 3\n2 3 5\n"' do
    IO.popen("ruby #{__dir__}/../057.rb", "w+") do |io|
      io.puts("100 3\n2 3 5\n")
      io.close_write
      expect(io.readlines.join).to eq("74\n")
    end
  end

  it 'test with "100 3\n2 4 6\n"' do
    IO.popen("ruby #{__dir__}/../057.rb", "w+") do |io|
      io.puts("100 3\n2 4 6\n")
      io.close_write
      expect(io.readlines.join).to eq("50\n")
    end
  end

  it 'test with "10000000000000 10\n13 17 19 23 29 31 37 41 43 47\n"' do
    IO.popen("ruby #{__dir__}/../057.rb", "w+") do |io|
      io.puts("10000000000000 10\n13 17 19 23 29 31 37 41 43 47\n")
      io.close_write
      expect(io.readlines.join).to eq("3324865541894\n")
    end
  end

end

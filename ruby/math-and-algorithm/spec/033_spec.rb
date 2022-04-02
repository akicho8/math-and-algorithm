RSpec.describe 'test' do
  it 'test with "4 1 2\n1 5 3\n"' do
    IO.popen("ruby #{__dir__}/../033.rb", "w+") do |io|
      io.puts("4 1 2\n1 5 3\n")
      io.close_write
      expect(io.readlines.join).to eq("4\n")
    end
  end

  it 'test with "1 1 6\n3 3 2\n"' do
    IO.popen("ruby #{__dir__}/../033.rb", "w+") do |io|
      io.puts("1 1 6\n3 3 2\n")
      io.close_write
      expect(io.readlines.join).to eq("1\n")
    end
  end

  it 'test with "6 6 6\n6 6 6\n"' do
    IO.popen("ruby #{__dir__}/../033.rb", "w+") do |io|
      io.puts("6 6 6\n6 6 6\n")
      io.close_write
      expect(io.readlines.join).to eq("2\n")
    end
  end

end

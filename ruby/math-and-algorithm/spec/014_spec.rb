RSpec.describe 'test' do
  it 'test with "10\n"' do
    IO.popen("ruby #{__dir__}/../014.rb", "w+") do |io|
      io.puts("10\n")
      io.close_write
      expect(io.readlines.join).to eq("2 5\n")
    end
  end

  it 'test with "36\n"' do
    IO.popen("ruby #{__dir__}/../014.rb", "w+") do |io|
      io.puts("36\n")
      io.close_write
      expect(io.readlines.join).to eq("2 2 3 3\n")
    end
  end

end

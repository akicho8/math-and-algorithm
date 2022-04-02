RSpec.describe 'test' do
  it 'test with "15 3 5\n"' do
    IO.popen("ruby #{__dir__}/../007.rb", "w+") do |io|
      io.puts("15 3 5\n")
      io.close_write
      expect(io.readlines.join).to eq("7\n")
    end
  end

  it 'test with "1000000 11 13\n"' do
    IO.popen("ruby #{__dir__}/../007.rb", "w+") do |io|
      io.puts("1000000 11 13\n")
      io.close_write
      expect(io.readlines.join).to eq("160839\n")
    end
  end

end

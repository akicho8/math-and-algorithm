RSpec.describe 'test' do
  it 'test with "100\n"' do
    IO.popen("ruby #{__dir__}/../006.rb", "w+") do |io|
      io.puts("100\n")
      io.close_write
      expect(io.readlines.join).to eq("203\n")
    end
  end

  it 'test with "27\n"' do
    IO.popen("ruby #{__dir__}/../006.rb", "w+") do |io|
      io.puts("27\n")
      io.close_write
      expect(io.readlines.join).to eq("57\n")
    end
  end

end

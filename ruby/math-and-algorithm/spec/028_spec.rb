RSpec.describe 'test' do
  it 'test with "4\n"' do
    IO.popen("ruby #{__dir__}/../028.rb", "w+") do |io|
      io.puts("4\n")
      io.close_write
      expect(io.readlines.join).to eq("5\n")
    end
  end

  it 'test with "45\n"' do
    IO.popen("ruby #{__dir__}/../028.rb", "w+") do |io|
      io.puts("45\n")
      io.close_write
      expect(io.readlines.join).to eq("1836311903\n")
    end
  end

end

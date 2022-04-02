RSpec.describe 'test' do
  it 'test with "3 1\n"' do
    IO.popen("ruby #{__dir__}/../056.rb", "w+") do |io|
      io.puts("3 1\n")
      io.close_write
      expect(io.readlines.join).to eq("24\n")
    end
  end

end

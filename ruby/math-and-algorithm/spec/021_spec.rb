RSpec.describe 'test' do
  it 'test with "6 2\n"' do
    IO.popen("ruby #{__dir__}/../021.rb", "w+") do |io|
      io.puts("6 2\n")
      io.close_write
      expect(io.readlines.join).to eq("15\n")
    end
  end

end

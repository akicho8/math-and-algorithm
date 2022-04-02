RSpec.describe 'test' do
  it 'test with "5\n20 22 25 43 50\n"' do
    IO.popen("ruby #{__dir__}/../061.rb", "w+") do |io|
      io.puts("5\n20 22 25 43 50\n")
      io.close_write
      expect(io.readlines.join).to eq("480\n")
    end
  end

end

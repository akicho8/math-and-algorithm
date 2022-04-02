RSpec.describe 'test' do
  it 'test with "4\n"' do
    IO.popen("ruby #{__dir__}/../052.rb", "w+") do |io|
      io.puts("4\n")
      io.close_write
      expect(io.readlines.join).to eq("Second\n")
    end
  end

end

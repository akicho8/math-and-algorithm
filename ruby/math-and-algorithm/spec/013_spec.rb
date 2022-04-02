RSpec.describe 'test' do
  it 'test with "12\n"' do
    IO.popen("ruby #{__dir__}/../013.rb", "w+") do |io|
      io.puts("12\n")
      io.close_write
      expect(io.readlines.join).to eq("1\n2\n3\n4\n6\n12\n")
    end
  end

  it 'test with "827847039317\n"' do
    IO.popen("ruby #{__dir__}/../013.rb", "w+") do |io|
      io.puts("827847039317\n")
      io.close_write
      expect(io.readlines.join).to eq("909863\n1\n909859\n827847039317\n")
    end
  end

end

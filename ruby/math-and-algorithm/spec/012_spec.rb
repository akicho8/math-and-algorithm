RSpec.describe 'test' do
  it 'test with "53\n"' do
    IO.popen("ruby #{__dir__}/../012.rb", "w+") do |io|
      io.puts("53\n")
      io.close_write
      expect(io.readlines.join).to eq("Yes\n")
    end
  end

  it 'test with "77\n"' do
    IO.popen("ruby #{__dir__}/../012.rb", "w+") do |io|
      io.puts("77\n")
      io.close_write
      expect(io.readlines.join).to eq("No\n")
    end
  end

  it 'test with "472249589291\n"' do
    IO.popen("ruby #{__dir__}/../012.rb", "w+") do |io|
      io.puts("472249589291\n")
      io.close_write
      expect(io.readlines.join).to eq("Yes\n")
    end
  end

end

RSpec.describe 'test' do
  it 'test with "8\n(()())()\n"' do
    IO.popen("ruby #{__dir__}/../068.rb", "w+") do |io|
      io.puts("8\n(()())()\n")
      io.close_write
      expect(io.readlines.join).to eq("Yes\n")
    end
  end

  it 'test with "6\n))()((\n"' do
    IO.popen("ruby #{__dir__}/../068.rb", "w+") do |io|
      io.puts("6\n))()((\n")
      io.close_write
      expect(io.readlines.join).to eq("No\n")
    end
  end

end

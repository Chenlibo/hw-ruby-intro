guard :rspec, cmd: "rspec" do
  # watch /lib/ files
  watch(%r{^lib/(.+).rb$})  {"spec"}
 
# watch /spec/ files
  watch(%r{^spec/(.+).rb$}) do |m|
    "spec/#{m[1]}.rb"
  end
end

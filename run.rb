def packages
  Dir.glob("/packages/*/")
end

packages.each { |e| system("milk add #{e}") }

system("milk web --host=0.0.0.0 --no-browser")

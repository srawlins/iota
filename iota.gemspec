Gem::Specification.new do |s|
  s.name = "iota"
  s.version = "1.0.0"
  s.authors = ["Sam Rawlins"]
  s.date = "2009-11-11"
  s.description = "iota - emulating Go's iota... thing."
  s.email = ["sam.rawlins@gmail.com"]
  
  s.has_rdoc = false
  s.homepage = "http://github.com/srawlins/iota"
  s.summary = "Emulates Go's iota... thing."

  s.required_ruby_version = '>= 1.8.1'
  s.require_paths = ["lib"]
  s.files = ["lib/iota.rb", "test/tests.rb", "README.rdoc"]
end

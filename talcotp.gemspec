Gem::Specification.new do |s|
  s.name        = "talcotp"
  s.version     = 0.1
  s.license     = "MIT"
  s.authors     = ["Keeyan Nejad"]
  s.email       = ["keeyan@keeyan.xyz"]
  s.homepage    = "http://github.com/knejad/talcotp"
  s.summary     = %q{TalcOTP is an otp password generator}

  s.files         = `git ls-files`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency 'rake', '~> 10.5'
  s.add_development_dependency 'rspec', '~> 3.5'
end

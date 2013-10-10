Gem::Specification.new do |s|
  s.name = "def_returns_method_name"
  s.version = "1.0.0"
  s.author = "Charlie Somerville"
  s.email = "charlie@charliesomerville.com"
  s.summary = "Backports Ruby 2.1's def returns method name feature"
  s.description = "Makes def expressions return the method name they defined instead of nil"
  s.license = "MIT"
  s.homepage = "https://github.com/charliesome/def_returns_method_name"
  s.files = `git ls-files`.lines.map(&:chomp)

  s.add_dependency "frozen_core", "1.0.0"
  s.required_ruby_version = ">= 1.9.2"
end

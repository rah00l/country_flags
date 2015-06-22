Gem::Specification.new do |s|
  s.name = 'country_flags'
  s.version = '0.0.1'
  s.authors = ['Alexander Lazarov']
  s.description = 'Gemified collection of country flags. See homepage for details: https://github.com/alexander-lazarov/isaf_id_validator'
  s.email = 'alexander.lazaroff@gmail.com'
  s.extra_rdoc_files = [ 'LICENSE' ]
  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {spec}/*`.split("\n")

  s.homepage = 'https://github.com/alexander-lazarov/country_flags'
  s.require_paths = %w(lib)
  s.summary = 'Gemified collection of country flags.'

  s.license = 'MIT'

  s.add_dependency('normalize_country', '>=0')

  s.add_development_dependency('rspec', '>= 2.11')
end
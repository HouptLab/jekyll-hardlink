Gem::Specification.new do |spec|
  spec.name          = 'jekyll-hardlinks'
  spec.version       = '0.1.2'
  spec.authors       = %w[f]
  spec.email         = %w[f@sutty.nl]

  spec.summary       = 'Saves space by using hard links for static files'
  spec.description   = 'Jekyll copies static files and duplicates storage use. Hard links point to the same file instead of making copies, thus saving storage.'
  spec.homepage      = "https://0xacab.org/sutty/jekyll/#{spec.name}"
  spec.license       = 'GPL-3.0'

  spec.metadata = {
    'bug_tracker_uri' => "#{spec.homepage}/issues",
    'homepage_uri' => spec.homepage,
    'source_code_uri' => spec.homepage,
    'changelog_uri' => "#{spec.homepage}/-/blob/master/CHANGELOG.md",
    'documentation_uri' => "https://rubydoc.info/gems/#{spec.name}"
  }

  spec.files         = Dir['lib/**/*']
  spec.require_paths = %w[lib]

  spec.extra_rdoc_files = Dir['README.md', 'CHANGELOG.md', 'LICENSE.txt']
  spec.rdoc_options += [
    '--title', "#{spec.name} - #{spec.summary}",
    '--main', 'README.md',
    '--line-numbers',
    '--inline-source',
    '--quiet'
  ]

  spec.required_ruby_version = '>= 2.6'

  spec.add_dependency 'jekyll', '~> 4'
end

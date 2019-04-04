
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "buffbuff/version"

Gem::Specification.new do |spec|
  spec.name          = "buffbuff"
  spec.version       = Buffbuff::VERSION
  spec.authors       = ["TAKAyuki_atkwsk"]
  spec.email         = ["takagi.takayuki.yuuki@gmail.com"]

  spec.summary       = %q{CLI tool to post Buffer with template}
  spec.description   = %q{CLI tool to post Buffer with template}
  spec.homepage      = "https://github.com/TAKAyukiatkwsk/buffbuff"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://github.com/TAKAyukiatkwsk/buffbuff"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "thor", "~> 0.20.0"
  spec.add_dependency "buffer", "~> 0.1.2"
  spec.add_dependency "mustache", "~>1.1"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "webmock", '~> 3.5', '>= 3.5.1'
end

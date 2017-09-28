$LOAD_PATH.push File.expand_path("../lib", __FILE__)
require "first_diff_char/identity"

Gem::Specification.new do |spec|
  spec.name = FirstDiffChar::Identity.name
  spec.version = FirstDiffChar::Identity.version
  spec.platform = Gem::Platform::RUBY
  spec.authors = ["zhitongLIU"]
  spec.email = ["zhitonggm.liu@gmail.com"]
  spec.homepage = "https://github.com//first_diff_char"
  spec.summary = "Find first uniq character in a string"
  spec.description = "Find first uniq character in a string"
  spec.license = "MIT"

  if ENV["RUBY_GEM_SECURITY"] == "enabled"
    spec.signing_key = File.expand_path("~/.ssh/gem-private.pem")
    spec.cert_chain = [File.expand_path("~/.ssh/gem-public.pem")]
  end

  spec.add_development_dependency "rake"
  spec.add_development_dependency "gemsmith"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "pry-remote"
  spec.add_development_dependency "pry-state"
  spec.add_development_dependency "pry-rescue"
  spec.add_development_dependency "pry-stack_explorer"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rb-fsevent" # Guard file events for OSX.
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "terminal-notifier"
  spec.add_development_dependency "terminal-notifier-guard"
  spec.add_development_dependency "rubocop"
  spec.add_development_dependency "codeclimate-test-reporter"

  spec.files = Dir["lib/**/*", "vendor/**/*"]
  spec.extra_rdoc_files = Dir["README*", "LICENSE*"]
  spec.require_paths = ["lib"]
end

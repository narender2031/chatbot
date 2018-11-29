# -*- encoding: utf-8 -*-
# stub: stealth 1.0.4 ruby lib

Gem::Specification.new do |s|
  s.name = "stealth".freeze
  s.version = "1.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Mauricio Gomes".freeze, "Matthew Black".freeze]
  s.date = "2018-08-04"
  s.description = "Ruby framework for building conversational bots.".freeze
  s.email = "mauricio@edge14.com".freeze
  s.executables = ["stealth".freeze]
  s.files = ["bin/stealth".freeze]
  s.homepage = "https://github.com/hellostealth/stealth".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.7.6".freeze
  s.summary = "Ruby framework for conversational bots".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sinatra>.freeze, ["~> 2.0"])
      s.add_runtime_dependency(%q<puma>.freeze, ["~> 3.10"])
      s.add_runtime_dependency(%q<thor>.freeze, ["~> 0.20"])
      s.add_runtime_dependency(%q<multi_json>.freeze, ["~> 1.12"])
      s.add_runtime_dependency(%q<sidekiq>.freeze, ["~> 5.0"])
      s.add_runtime_dependency(%q<activesupport>.freeze, ["~> 5.2"])
      s.add_runtime_dependency(%q<activerecord>.freeze, ["~> 5.2"])
      s.add_runtime_dependency(%q<railties>.freeze, ["~> 5.2"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.6"])
      s.add_development_dependency(%q<rspec_junit_formatter>.freeze, ["~> 0.3"])
      s.add_development_dependency(%q<rack-test>.freeze, ["~> 0.7"])
      s.add_development_dependency(%q<mock_redis>.freeze, ["~> 0.17"])
    else
      s.add_dependency(%q<sinatra>.freeze, ["~> 2.0"])
      s.add_dependency(%q<puma>.freeze, ["~> 3.10"])
      s.add_dependency(%q<thor>.freeze, ["~> 0.20"])
      s.add_dependency(%q<multi_json>.freeze, ["~> 1.12"])
      s.add_dependency(%q<sidekiq>.freeze, ["~> 5.0"])
      s.add_dependency(%q<activesupport>.freeze, ["~> 5.2"])
      s.add_dependency(%q<activerecord>.freeze, ["~> 5.2"])
      s.add_dependency(%q<railties>.freeze, ["~> 5.2"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.6"])
      s.add_dependency(%q<rspec_junit_formatter>.freeze, ["~> 0.3"])
      s.add_dependency(%q<rack-test>.freeze, ["~> 0.7"])
      s.add_dependency(%q<mock_redis>.freeze, ["~> 0.17"])
    end
  else
    s.add_dependency(%q<sinatra>.freeze, ["~> 2.0"])
    s.add_dependency(%q<puma>.freeze, ["~> 3.10"])
    s.add_dependency(%q<thor>.freeze, ["~> 0.20"])
    s.add_dependency(%q<multi_json>.freeze, ["~> 1.12"])
    s.add_dependency(%q<sidekiq>.freeze, ["~> 5.0"])
    s.add_dependency(%q<activesupport>.freeze, ["~> 5.2"])
    s.add_dependency(%q<activerecord>.freeze, ["~> 5.2"])
    s.add_dependency(%q<railties>.freeze, ["~> 5.2"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.6"])
    s.add_dependency(%q<rspec_junit_formatter>.freeze, ["~> 0.3"])
    s.add_dependency(%q<rack-test>.freeze, ["~> 0.7"])
    s.add_dependency(%q<mock_redis>.freeze, ["~> 0.17"])
  end
end

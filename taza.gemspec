Gem::Specification.new do |s|
  s.name = %q{taza}
  s.version = "0.8.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Adam Anderson"]
  s.date = %q{2009-05-07}
  s.default_executable = %q{taza}
  s.description = %q{Taza is an opionated browser-based testing framework.}
  s.email = %q{adamandersonis@gmail.com}
  s.executables = ["taza"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README"]
  s.files = ["History.txt", "Manifest.txt", "README.textile", "taza.gemspec", "VERSION.yml", "bin/taza", "generators/flow", "generators/flow/flow_generator.rb", "generators/flow/templates", "generators/flow/templates/flow.rb.erb", "generators/page", "generators/page/page_generator.rb", "generators/page/templates", "generators/page/templates/functional_page_spec.rb.erb", "generators/page/templates/page.rb.erb", "generators/partial", "generators/partial/partial_generator.rb", "generators/partial/templates", "generators/partial/templates/partial.rb.erb", "generators/site", "generators/site/site_generator.rb", "generators/site/templates", "generators/site/templates/site.rb.erb", "generators/site/templates/site.yml.erb", "lib/app_generators", "lib/app_generators/taza", "lib/app_generators/taza/taza_generator.rb", "lib/app_generators/taza/templates", "lib/app_generators/taza/templates/config.yml.erb", "lib/app_generators/taza/templates/rakefile.rb.erb", "lib/app_generators/taza/templates/spec_helper.rb.erb", "lib/app_generators/taza/templates/console.cmd.erb", "lib/app_generators/taza/templates/console.erb", "lib/extensions", "lib/extensions/array.rb", "lib/extensions/hash.rb", "lib/extensions/object.rb", "lib/extensions/string.rb", "lib/taza", "lib/taza/browser.rb", "lib/taza/entity.rb", "lib/taza/fixture.rb", "lib/taza/fixtures.rb", "lib/taza/flow.rb", "lib/taza/page.rb", "lib/taza/settings.rb", "lib/taza/options.rb", "lib/taza/site.rb", "lib/taza/tasks.rb", "lib/taza.rb", "spec/array_spec.rb", "spec/browser_spec.rb", "spec/entity_spec.rb", "spec/fixtures_spec.rb", "spec/fixture_spec.rb", "spec/flow_generator_spec.rb", "spec/hash_spec.rb", "spec/object_spec.rb", "spec/page_generator_spec.rb", "spec/page_module_spec.rb", "spec/page_spec.rb", "spec/partial_generator_spec.rb", "spec/project_generator_spec.rb", "spec/sandbox", "spec/sandbox/config", "spec/sandbox/config/config.yml", "spec/sandbox/config/site_name.yml", "spec/sandbox/config.yml", "spec/sandbox/fixtures", "spec/sandbox/fixtures/examples.yml", "spec/sandbox/fixtures/foos.yml", "spec/sandbox/fixtures/foo_site", "spec/sandbox/fixtures/foo_site/bars.yml", "spec/sandbox/fixtures/users.yml", "spec/sandbox/flows", "spec/sandbox/flows/batman.rb", "spec/sandbox/flows/robin.rb", "spec/sandbox/pages", "spec/sandbox/pages/foo", "spec/sandbox/pages/foo/bar.rb", "spec/sandbox/pages/foo/bay.rb", "spec/sandbox/pages/foo/baz.rb", "spec/sandbox/pages/foo/partials", "spec/sandbox/pages/foo/partials/partial_the_reckoning.rb", "spec/settings_spec.rb", "spec/site_fixtures_spec.rb", "spec/site_generator_spec.rb", "spec/site_spec.rb", "spec/spec_helper.rb", "spec/string_spec.rb", "spec/taza_bin_spec.rb", "spec/taza_tasks_spec.rb", "README"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/scudco/taza}
  s.rdoc_options = ["--main", "README", "--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{taza}
  s.rubygems_version = %q{1.2.0}
  s.summary = %q{Taza is an opionated browser-based testing framework.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if current_version >= 3 then
      s.add_runtime_dependency(%q<taglob>, [">= 1.1.1"])
      s.add_runtime_dependency(%q<rake>, [">= 0.8.3"])
      s.add_runtime_dependency(%q<mocha>, [">= 0.9.3"])
      s.add_runtime_dependency(%q<rspec>, [">= 1.1.12"])
      s.add_runtime_dependency(%q<rubigen>, [">= 1.4.0"])
    else
      s.add_dependency(%q<taglob>, [">= 1.1.1"])
      s.add_dependency(%q<rake>, [">= 0.8.3"])
      s.add_dependency(%q<mocha>, [">= 0.9.3"])
      s.add_dependency(%q<rspec>, [">= 1.1.12"])
      s.add_dependency(%q<rubigen>, [">= 1.4.0"])
    end
  else
    s.add_dependency(%q<taglob>, [">= 1.1.1"])
    s.add_dependency(%q<rake>, [">= 0.8.3"])
    s.add_dependency(%q<mocha>, [">= 0.9.3"])
    s.add_dependency(%q<rspec>, [">= 1.1.12"])
    s.add_dependency(%q<rubigen>, [">= 1.4.0"])
  end
end

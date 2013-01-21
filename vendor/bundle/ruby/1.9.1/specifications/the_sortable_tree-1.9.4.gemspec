# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "the_sortable_tree"
  s.version = "1.9.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ilya N. Zykin, Matthew Clark, Mikhail Dieterle"]
  s.date = "2012-06-17"
  s.description = "Sortable awesom_nested_set, Drag&Drop GUI for awesom_nested_set, View Helper for nested set, Nested Comments"
  s.email = ["zykin-ilya@ya.ru"]
  s.extra_rdoc_files = ["README.md"]
  s.files = ["README.md"]
  s.homepage = "https://github.com/the-teacher/the_sortable_tree"
  s.require_paths = ["lib"]
  s.rubyforge_project = "the_sortable_tree"
  s.rubygems_version = "1.8.24"
  s.summary = "Sortable awesom_nested_set, Drag&Drop GUI for awesom_nested_set, View Helper for nested set, Nested Comments"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 3.1"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>, [">= 0"])
    else
      s.add_dependency(%q<rails>, [">= 3.1"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<rspec-rails>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 3.1"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<rspec-rails>, [">= 0"])
  end
end

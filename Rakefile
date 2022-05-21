# frozen_string_literal: true

require "bundler/gem_tasks"
require "rspec/core/rake_task"
require "standard/rake"
require "yard"

require_relative "./lib/private/rake_helpers"

RSpec::Core::RakeTask.new(:spec)

YARD::Rake::YardocTask.new do |t|
  t.files = ["lib/**/*.rb"]
end

alias_task "lint", "standard"
alias_task "lint:fix", "standard:fix"

task default: [:standard, :spec]

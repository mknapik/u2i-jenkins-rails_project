# More info at https://github.com/guard/guard#readme

# This group allows to skip running RuboCop if RSpec.
group :red_green_refactor, halt_on_fail: true do
  guard :minitest do
    # with Minitest::Unit
    watch(%r{^test/(.*)\/?test_(.*)\.rb$})
    watch(%r{^lib/(.*/)?([^/]+)\.rb$})     { |m| "test/#{m[1]}test_#{m[2]}.rb" }
    watch(%r{^test/test_helper\.rb$})      { 'test' }

    # with Minitest::Spec
    # watch(%r{^spec/(.*)_spec\.rb$})
    # watch(%r{^lib/(.+)\.rb$})         { |m| "spec/#{m[1]}_spec.rb" }
    # watch(%r{^spec/spec_helper\.rb$}) { 'spec' }

    watch(%r{^app/(.+)\.rb$})                               { |m| "test/#{m[1]}_test.rb" }
    watch(%r{^app/controllers/application_controller\.rb$}) { 'test/controllers' }
    watch(%r{^app/controllers/(.+)_controller\.rb$})        { |m| "test/integration/#{m[1]}_test.rb" }
    watch(%r{^app/views/(.+)_mailer/.+})                   { |m| "test/mailers/#{m[1]}_mailer_test.rb" }
    watch(%r{^lib/(.+)\.rb$})                               { |m| "test/lib/#{m[1]}_test.rb" }
    watch(%r{^test/.+_test\.rb$})
    watch(%r{^test/test_helper\.rb$}) { 'test' }
  end

  guard :rubocop, all_on_start: false, cli: %w(--format fuubar --rails) do
    watch(%r{.+\.rb$})
    watch(%r{(?:.+/)?\.rubocop\.yml$}) { |m| File.dirname(m[0]) }
  end
end

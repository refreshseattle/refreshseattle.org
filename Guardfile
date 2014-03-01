# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'minitest' do
  # with Minitest::Unit
  watch(%r|^test/(.*)\/?(.*)_spec\.rb|)
  watch(%r|^lib/(.*)([^/]+)\.rb|)     { |m| "test/#{m[1]}#{m[2]}_spec.rb" }
  watch(%r|^app/(.*)([^/]+)\.rb|)     { |m| "test/#{m[1]}#{m[2]}_spec.rb" }
  watch(%r|^test/test_helper\.rb|)    { "test" }

  # with Minitest::Spec
   #watch(%r|^spec/(.*)_spec\.rb|)
   #watch(%r|^lib/(.*)([^/]+)\.rb|)     { |m| "spec/#{m[1]}#{m[2]}_spec.rb" }
   #watch(%r|^spec/spec_helper\.rb|)    { "spec" }

  # Rails 3.2
  # watch(%r|^app/controllers/(.*)\.rb|) { |m| "test/controllers/#{m[1]}_test.rb" }
  # watch(%r|^app/helpers/(.*)\.rb|)     { |m| "test/helpers/#{m[1]}_test.rb" }
  # watch(%r|^app/models/(.*)\.rb|)      { |m| "test/unit/#{m[1]}_test.rb" }  
  
  # Rails
  # watch(%r|^app/controllers/(.*)\.rb|) { |m| "test/functional/#{m[1]}_test.rb" }
  # watch(%r|^app/helpers/(.*)\.rb|)     { |m| "test/helpers/#{m[1]}_test.rb" }
  # watch(%r|^app/models/(.*)\.rb|)      { |m| "test/unit/#{m[1]}_test.rb" }  
end

guard 'livereload' do
  watch(%r{app/views/.+\.(erb|haml|slim)$})
  watch(%r{app/helpers/.+\.rb})
  watch(%r{public/.+\.(css|js|html)})
  watch(%r{config/locales/.+\.yml})
  # Rails Assets Pipeline
  watch(%r{(app|vendor)(/assets/\w+/(.+\.(css|js|html))).*}) { |m| "/assets/#{m[3]}" }
end

guard :bundler do
  watch('Gemfile')
  # Uncomment next line if your Gemfile contains the `gemspec' command.
  # watch(/^.+\.gemspec/)
end

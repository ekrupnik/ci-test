require 'colored'
require 'rspec/core/rake_task'

task :default => [:print_help]

task :print_help do
  puts "Please specify a task to run. To list all available tasks, run 'rake -T' or 'rake --tasks'."
end

desc 'Run a full clean build and full tests'
task :build => [:clean, :compile, :test]

desc 'Run all tests and static analysis'
task :test => [:static_analysis, :unit_test, :integration_test]

desc 'Clean workspace and logs'
task :clean do
  print_header("Running task: clean")
  if FileTest.exists?('rspec.log')
  	puts "removing rspec.log..."
  	`rm rspec.log`
  end
  if FileTest.exists?('demo.war')
  	puts "removing previous build: demo.war..."
  	`rm demo.war`
  end
end

desc 'Compile your source code'
task :compile do
  print_header("Running task: compile")
  puts "compiling...."
  `touch demo.war`
  puts "generated demo.war"
end

desc 'Run all static analysis'
task :static_analysis do
  print_header("Running task: static_analysis")
  sh 'tailor'
end

desc 'Compile your source code'
task :unit_test do
  print_header("Running task: unit_test")
  sh 'rspec -c spec/unit/*_spec.rb'
end

desc 'Run all integration tests'
task :integration_test do
  print_header("Running task: integration_test")
end

desc 'Run tailor'
task :tailor do
  print_header("Running task: tailor")
  sh 'tailor'
end

private

def print_header(message=nil)
  puts "\n#\n# #{message}\n#\n".cyan
end

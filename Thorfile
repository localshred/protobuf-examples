require 'rubygems'
require 'bundler'
Bundler.require :default

require 'protobuf/compiler/compiler'
require 'json'

class Proto < Thor
  include Thor::Actions
  
  DEFINITIONS_PATH = '/code/src/urug/proto'
    
  desc 'compile', 'Compile proto definitions'
  method_option :out, :type => :string, :aliases => %w( -o ), :banner => 'OUTPUT DIRECTORY'
  method_option :prompt, :type => :boolean, :default => false, :aliases => %w( -p )
  method_option :debug, :type => :boolean, :default => false, :aliases => %w( -d )
  def compile
    return unless !options.prompt? || yes?("Compile to #{options.out}? [Yn]", :yellow)
    say 'Compiling all definitions...', :yellow
    
    begin
      Dir.glob(File.join(DEFINITIONS_PATH, '**', '*.proto')).each do |file|
        say('Compiling file %s' % file, :yellow) if options.debug?
        Protobuf::Compiler.compile(file, "./proto", options.out)
      end
    rescue
      say $!.message, :red
      say $!.backtrace.join("\n"), :red
      say 'Compile failed!', :red
      exit 1
    else
      say 'Compile finished', :green
    end
  end
  
end
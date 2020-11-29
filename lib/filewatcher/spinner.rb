# frozen_string_literal: true

require_relative 'spinner/version'

## Include Spinner module into Filewatcher
class Filewatcher
  ## Module for the `spinner` option
  module Spinner
    module ClassMethods
      def print_version
        super if defined? super

        puts "Filewatcher Spinner #{Filewatcher::Spinner::VERSION}"
      end
    end

    private

    def after_initialize(unexpanded_filenames, options)
      super if defined? super

      @show_spinner = options[:spinner]
    end

    def before_pause_sleep
      super
      update_spinner('Paused')
    end

    def before_resume_sleep
      super
      update_spinner('Resumed')
    end

    def after_stop
      super
      update_spinner('Stopped')
    end

    def finalizing
      super
      update_spinner('Finalizing')
    end

    def before_pausing_sleep
      super
      update_spinner('Pausing')
    end

    def before_watching_sleep
      super
      update_spinner('Watching')
    end

    def update_spinner(label)
      return unless @show_spinner

      @spinner ||= %w[\\ | / -]
      print "#{' ' * 30}\r#{label}  #{@spinner.rotate!.first}\r"
    end
  end

  include Spinner
  extend Spinner::ClassMethods
end

if Filewatcher.const_defined?(:CLI, false)
  Filewatcher::CLI::Command.option %w[-s --spinner], :flag, 'show an ASCII spinner', default: false
end

# frozen_string_literal: true

# Override rubygem_push in order to push to nexus instead of RubyGems
# when running `rake release`
module Bundler
  # :reek:InstanceVariableAssumption
  class GemHelper
    NEXUS_CMD = %w[gem nexus].freeze
    private_constant :NEXUS_CMD

    raise 'Patch misapplied' unless instance_methods.include?(:rubygem_push)

    protected

    # :reek:DuplicateMethodCall { max_calls: 2 }
    def rubygem_push(path)
      thread = Thread.new { @result = system(*NEXUS_CMD, path) }
      thread.join

      # if thread terminated and the command exited without errors
      if !thread.status && @result
        Bundler.ui.confirm "Pushed #{name} #{version} to #{gem_push_host}"
      else
        Bundler.ui.error <<~MSG
          Something wrong happened. Run this command directly for more detailed output:
          #{NEXUS_CMD.join(' ')} #{path}
        MSG
      end
    end
  end
end

# frozen_string_literal: true

require 'json'

##
# Dumps logs as JSON, including user specified tags
class JsonLogger < Logger
  attr_accessor :tags

  def initialize(*args)
    super(*args)

    self.tags = {}

    self.formatter = proc do |severity, datetime, _progname, msg|
      "#{JSON.dump(timestamp: datetime.utc.iso8601, severity: severity, pid: Process.pid, message: msg, **tags)}\n"
    end
  end
end

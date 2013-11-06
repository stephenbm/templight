require "templight/version"
require 'ostruct'
require 'erb'

class ErbBinding < OpenStruct
  def get_binding
    return binding()
  end
end

module Templight

  def self.render(path, args)
    template_string = File.read(path)
    template = ERB.new template_string
    params = ErbBinding.new(args)
    return template.result(params.get_binding)
  end

end

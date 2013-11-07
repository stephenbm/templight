require "templight/version"
require 'ostruct'
require 'erb'

class ErbBinding < OpenStruct
  def get_binding
    return binding()
  end
end

module Templight
  @template_path = '.'

  def self.configure(options={:path => @template_path})
    @template_path = options[:path]
  end

  def self.render(filename, args)
    template_string = File.read(File.join(@template_path, filename))
    template = ERB.new template_string
    params = ErbBinding.new(args)
    return template.result(params.get_binding)
  end

end

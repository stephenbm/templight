require "templight/version"
require 'ostruct'
require 'erb'

class ErbBinding < OpenStruct
  def get_binding
    return binding()
  end
end

module Templight
  @template_path = './app/templates'

  def self.configure(options={"path" => @template_path})
    @template_path = options["path"]
  end

  def self.render(filename, options={})
    template_string = File.read(File.join(@template_path, filename))
    template = ERB.new template_string
    params = ErbBinding.new(options)
    return template.result(params.get_binding)
  end

end

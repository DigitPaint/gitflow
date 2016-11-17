require 'tilt/template'
require 'github/markdown'

module Tilt
  class GFMTemplate < Template
    self.default_mime_type = 'text/html'

    def prepare
      @engine = nil
      @output = GitHub::Markdown.render_gfm(data)
    end

    def evaluate(scope, locals, &block)
      @output ||= @engine.to_html
    end

    def allows_script?
      false
    end
  end

  register_lazy :GFMTemplate, './gfm_template', 'markdown', 'mkd', 'md'
end
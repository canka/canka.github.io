module Jekyll
  class Youtube < Liquid::Tag

    def initialize(name, params, tokens)
      super
      ids = params.split(' ')
      @id = ids[0]
      @width = ids[1]
      @height = ids[2]

    end

    def render(context)
      %(<div class="embed-video-container"><iframe src="http://www.youtube.com/embed/#{@id.strip}" width="#{@width.strip}" height="#{@height.strip}" allowfullscreen></iframe></div>)
    end
  end
end

Liquid::Template.register_tag('youtube', Jekyll::Youtube)
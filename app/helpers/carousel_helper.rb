module CarouselHelper
  def carousel_for(images)
    Carousel.new(self, images).html
  end

  class Carousel
    def initialize(view, images)
      @view, @images = view, images
    end

   def html
      content = view.safe_join([slides])
      view.content_tag(:div, content, class: 'carousel slide', :data => {:ride => 'carousel'})
   end

    private

    attr_accessor :view, :images
    delegate :link_to, :content_tag, :image_tag, :safe_join, to: :view

    def slides
      items = images.map.with_index { |image, index| slide_tag(image, index.zero?) }
      content_tag(:div, safe_join(items), class: 'carousel-inner')
    end

    def slide_tag(image, is_active)
      options = {
        class: (is_active ? 'carousel-item active' : 'carousel-item'),
        interval: (3000)
      }

      content_tag(:div, image_tag(image), options)
    end
  end
end
module Spree
  HomeController.class_eval do
    def landing
      @body_class = "landing"
      @body_id = "page-top"
    end
  end
end
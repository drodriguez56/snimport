module Spree
  class HomeController < StoreController
    def landing
      @body_class = "landing"
      @body_id = "landing"
    end
  end
end
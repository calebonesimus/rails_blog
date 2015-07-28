class Ad

  def self.ad_list
    unless defined?(@@ads)
    @@ads = ["ad_1.jpg",
             "ad_2.jpg",
             "ad_3.jpg",
             "ad_4.jpg"]
    end
    @@ads
  end

end

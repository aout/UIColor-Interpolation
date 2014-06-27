Pod::Spec.new do |s|
  s.name         = "UIColorInterpolation"
  s.version      = "0.1"
  s.summary      = "A simple UIColor category to interpolate with another color."

  s.homepage     = "https://github.com/aout/UIColor-Interpolation"

  s.license      = { :type => 'MIT', :file => 'LICENSE' }

  s.author             = { "Guillaume CASTELLANA" => "guillaume.castellana@gmail.com" }
  s.social_media_url   = "http://twitter.com/aooout"

  s.platform     = :ios, '5.0'

  s.source       = { :git => "https://github.com/aout/UIColor-Interpolation.git", :tag => "0.1" }

  s.source_files  = ""
  s.public_header_files = "*.h"

  s.requires_arc = true
end

Pod::Spec.new do |s|
  s.name = 'ImageCacheResize'
  s.version = '0.1'
  s.source = { :git => 'https://github.com/erichsu/ImageCacheResize', :tag => s.version.to_s }

  s.description = 'iOS library to manage Caches of images and Resize transformations'

  s.requires_arc = true
  s.framework = 'ImageIO'
  
  s.default_subspec = 'Core'

  s.subspec 'Core' do |core|
    core.source_files = 'Image Cache Resize/Libraries/*/{NS,SD,UI}*.{h,m}'
    core.exclude_files = 'SDWebImage/UIImage+WebP.{h,m}'
  end

  s.subspec 'MapKit' do |mk|
    mk.source_files = 'Image Cache Resize/Libraries/SDWebImage/MKAnnotationView+WebCache.*'
    mk.framework = 'MapKit'
    mk.dependency 'SDWebImage/Core'
  end

  s.subspec 'WebP' do |webp|
    webp.source_files = 'Image Cache Resize/Libraries/SDWebImage/UIImage+WebP.{h,m}'
    webp.xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) SD_WEBP=1' }
    webp.dependency 'SDWebImage/Core'
    webp.dependency 'libwebp'
  end
end

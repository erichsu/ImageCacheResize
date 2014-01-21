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
  end
end

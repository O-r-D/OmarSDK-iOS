
Pod::Spec.new do |s|
  s.name             = 'OmarSDK'
  s.version          = '0.1.0'
  s.summary          = 'A little something to show Bitburst'
  s.description      = <<-DESC
	"A Very Long description about my SDK... But it's really just to show it to Bitburst :)"
                       DESC
					   
  s.homepage         = 'https://github.com/O-r-D/OmarSDK-iOS'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'O-r-D' => 'oraad97@gmail.com' }
  s.source           = { :git => 'https://github.com/O-r-D/OmarSDK-iOS.git', :tag => s.version.to_s }
  s.ios.deployment_target = '12.0'
  s.source_files = 'OmarSDK/Classes/**/*'
  s.dependency 'Alamofire', '~> 5.5'
end

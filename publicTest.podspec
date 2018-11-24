Pod::Spec.new do |s|
  s.name         = "publicTest"
  s.version      = "1.0.0"
  s.summary      = "A fast integration images loop function of custom control"
  s.description  = "使用的工具类"
  s.homepage     = "https://github.com/sunyunfei/publicTest"
  s.social_media_url   = "http://www.baidu.com"
  s.license= { :type => "MIT", :file => "LICENSE" }
  s.author       = { "沉默学飞翔" => "1035044809@qq.com" }
  s.source       = { :git => "https://github.com/sunyunfei/publicTest.git", :tag => "#{s.version}" }
  s.source_files = "publicTest", "*.{h,m}"
  s.ios.deployment_target = '8.0'
  s.requires_arc = true
end
Pod::Spec.new do |s|
  s.name     = 'JAGPropertyConverter'
  s.version  = '1.0.0'
  s.license  = 'MIT'
  s.summary  = 'JAGPropertyConverter allows easy serialization/deserialization of Model objects to/from NSDictionaries in JSON or PropertyList formats.'
  s.homepage = 'http://github.com/jagill/JAGPropertyConverter'
  s.author   = { 'James Gill' => 'jamesagill@gmail.com' }
  s.source   = { :git => 'ssh://git@stash.runtastic.com:7999/iextlibs/runtastic-iphone-extern-jagpropertyconverter.git', :tag => s.version.to_s }
  s.description = 'With minimal configuration, JAGPropertyConverter allows easy persistence, copying, or API serialization of your Model objects.  It also allows run-time querying of an object\'s properties and their attributes.'

  s.platform = :ios
  s.source_files = 'JAGPropertyConverter'
  s.header_dir = 'JAGPropertyConverter'
  s.requires_arc = true
end

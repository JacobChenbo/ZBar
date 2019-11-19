#
#  Be sure to run `pod spec lint ZGB_Module_Common.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
    
    # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
    #
    #  These will help people to find your library, and whilst it
    #  can feel like a chore to fill in it's definitely to your advantage. The
    #  summary should be tweet-length, and the description more in depth.
    #
    
    s.name         = "ZBarSDK"
    s.version      = "1.4.2"
    s.summary      = "QR and barcode scan library"
    
    # This description is used to generate tags and improve search results.
    #   * Think: What does it do? Why did you write it? What is the focus?
    #   * Try to keep it short, snappy and to the point.
    #   * Write the description between the DESC delimiters below.
    #   * Finally, don't worry about the indent, CocoaPods strips it!
    s.description  = <<-DESC
    ZBar is an open source software suite for reading bar codes from various sources, such as video streams, image files and raw intensity sensors. It supports many popular symbologies (types of bar codes) including EAN-13/UPC-A, UPC-E, EAN-8, Code 128, Code 39, Interleaved 2 of 5 and QR Code.
    DESC
    
    s.homepage     = "http://git.jd.com/XTL-iOS"
    # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
    
    
    # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
    #
    #  Licensing your code is important. See http://choosealicense.com for more info.
    #  CocoaPods will detect a license file if there is a named LICENSE*
    #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
    #
    
    s.license      = { :type => "GNU LGPL 2.1" }
    
    
    # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
    #
    #  Specify the authors of the library, with email addresses. Email addresses
    #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
    #  accepts just a name if you'd rather not provide an email address.
    #
    #  Specify a social_media_url where others can refer to, for example a twitter
    #  profile URL.
    #
    
    s.author             = { "jacobchen" => "845016818@qq.com" }
    # Or just: s.author    = "chao liang"
    # s.authors            = { "chao liang" => "liangchao6@jd.com" }
    # s.social_media_url   = "http://twitter.com/chao liang"
    
    # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
    #
    #  If this Pod runs only on iOS or OS X, then specify the platform and
    #  the deployment target. You can optionally include the target after the platform.
    #
    
    # s.platform     = :ios
    s.platform     = :ios, "8.0"
    
    #  When using multiple platforms
    # s.ios.deployment_target = "5.0"
    # s.osx.deployment_target = "10.7"
    # s.watchos.deployment_target = "2.0"
    # s.tvos.deployment_target = "9.0"
    
    
    # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
    #
    #  Specify the location from where the source should be retrieved.
    #  Supports git, hg, bzr, svn and HTTP.
    #
    
    s.source       = { :git => "https://github.com/JacobChenbo/ZBar.git", :tag => "iPhoneSDK-1.4.2" }
    
    
    # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
    #
    #  CocoaPods is smart about how it includes source code. For source files
    #  giving a folder will include any swift, h, m, mm, c & cpp files.
    #  For header files it will include any header in the folder.
    #  Not including the public_header_files will make all headers public.
    #
    
    s.source_files  = "include/zbar.h", 
    "zbar/**/*.h", 
    "iphone/*.h", 
    "iphone/include/**/*.h", 
    "zbar/{config,decoder,error,image,img_scanner,refcnt,scanner,symbol}.c",
    "zbar/decoder/{codabar,code39,code93,code128,databar,ean,i25,qr_finder}.c",
    "zbar/qrcode/*.c",
    "iphone/*.m"
    # s.exclude_files = "ZGB_Module_Common/Exclude"
    s.resources = "iphone/res/{zbar-*.png,zbar-help.html}"
    s.prefix_header_file = "iphone/include/prefix.pch"
    s.public_header_files = "iphone/**/**/*.h", "include/*.h"
    
    
    # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
    #
    #  A list of resources included with the Pod. These are copied into the
    #  target bundle with a build phase script. Anything else will be cleaned.
    #  You can preserve files from being cleaned, please don't preserve
    #  non-essential files like tests, examples and documentation.
    #
    
    # s.resource  = "icon.png"
    # s.resources = "Resources/*.png"
    
    # s.preserve_paths = "FilesToSave", "MoreFilesToSave"
    
    
    # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
    #
    #  Link your library with frameworks, or libraries. Libraries do not include
    #  the lib prefix of their name.
    #
    
    # s.framework  = "SomeFramework"
    s.frameworks = "AVFoundation",
    "CoreGraphics",
    "CoreMedia",
    "CoreVideo",
    "QuartzCore"
    
    s.library   = "iconv"
    # s.libraries = "iconv", "xml2"
    # s.vendored_frameworks = "ZGB_Module_Common/**/*.framework"
    # s.vendored_libraries = "ZGB_Module_Common/**/*.a"
    # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
    #
    #  If your library depends on compiler flags you can set them in the xcconfig hash
    #  where they will only apply to your library. If you depend on other Podspecs
    #  you can include multiple dependencies to ensure it works.
    
    s.requires_arc = false
    s.compiler_flags = "-w"
    
    s.xcconfig = { "EXCLUDED_SOURCE_FILE_NAMES[sdk=iphoneos*][arch=*]" => "ZBarReaderViewImpl_Simulator.m",
    "EXCLUDED_SOURCE_FILE_NAMES[sdk=iphonesimulator*][arch=*]" => "ZBarReaderViewImpl_Capture.m ZBarCaptureReader.m",
    "GCC_PREPROCESSOR_DEFINITIONS" => "NDEBUG=1" }
    # s.dependency "JSONKit", "~> 1.4"
    
end

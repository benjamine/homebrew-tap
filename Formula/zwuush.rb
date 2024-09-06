class Zwuush < Formula
    desc ""
    homepage "https://github.com/benjamine/zwuush"
    url "https://github.com/benjamine/zwuush/releases/download/v0.0.2/zwuush"
    sha256 "8ceb88804b27336e355cef2ab3a02cf3b39be1fd03da3e96d44f951b614b6bee"
    license ""
  
    def install
      bin.install "zwuush"
    end
  
    test do
      system "#{bin}/zwuush", "--version"
    end
  end
  
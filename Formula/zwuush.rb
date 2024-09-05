class Zwuush < Formula
    desc ""
    homepage "https://github.com/benjamine/zwuush"
    url "https://github.com/benjamine/zwuush/releases/download/v0.0.1/zwuush"
    sha256 "e67a3d32a7528366b6cb55b038909d03e50203145fab637831cdd4ac960d4eaa"
    license ""
  
    def install
      bin.install "zwuush"
    end
  
    test do
      system "#{bin}/yourapp", "--version"
    end
  end
  
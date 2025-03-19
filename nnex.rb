class Nnex < Formula
    desc "Utility to manage and copy Swift project executables"
    homepage "https://github.com/nikolainobadi/NnExecutableKit"
    url "https://github.com/nikolainobadi/NnExecutableKit/releases/download/v0.5.2/nnex"
    sha256 "cb47d159e0d042727bb2ccfbfdc2678ca2780911aaa5fee63547e6c4bf68ff82"
    license "MIT"

    def install
      bin.install "nnex"
    end
  
    test do
      system "#{bin}/nnex", "--help"
    end
  end

class Nnex < Formula
    desc "Utility to manage and copy Swift project executables"
    homepage "https://github.com/nikolainobadi/NnExecutableKit"
    url "https://github.com/nikolainobadi/NnExecutableKit/releases/download/v0.5.0/nnex"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    license "MIT"
  
    def install
      bin.install "nnex"
    end
  
    test do
      system "#{bin}/nnex", "--help"
    end
  end
  
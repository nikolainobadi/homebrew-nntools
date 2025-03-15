class Nnex < Formula
    desc "Utility to manage and copy Swift project executables"
    homepage "https://github.com/nikolainobadi/NnExecutableKit"
    url "https://github.com/nikolainobadi/NnExecutableKit/releases/download/v0.5.0/nnex"
    sha256 "6e4f27469313cb18f43384111b151f01bacea1aa61a06ae5f3fd1b6d528ed6e4"
    license "MIT"
  
    def install
      bin.install "nnex"
    end
  
    test do
      system "#{bin}/nnex", "--help"
    end
  end
  
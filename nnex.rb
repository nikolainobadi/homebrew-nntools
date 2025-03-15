class Nnex < Formula
    desc "Utility to manage and copy Swift project executables"
    homepage "https://github.com/nikolainobadi/NnExecutableKit"
    url "https://github.com/nikolainobadi/NnExecutableKit/releases/download/v0.5.1/nnex"
    sha256 "922c68786ff5694e3f0330f0890147a0030ea781e2a8fce90379da01de1da876"
    license "MIT"
  
    def install
      bin.install "nnex"
    end
  
    test do
      system "#{bin}/nnex", "--help"
    end
  end
  
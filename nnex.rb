class Nnex < Formula
    desc "Utility to manage and copy Swift project executables"
    homepage "https://github.com/nikolainobadi/NnExecutableKit"
    url "https://github.com/nikolainobadi/NnExecutableKit/releases/download/v0.5.1/nnex"
    sha256 "5e58342377571185761b16c36b8e19f12621ac7cbf0ff1862d8e93d8bf196717"
    license "MIT"

    def install
      bin.install "nnex"
    end
  
    test do
      system "#{bin}/nnex", "--help"
    end
  end

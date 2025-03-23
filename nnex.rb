class Nnex < Formula
    desc "Command line tool to streamline homebrew distribution"
    homepage "https://github.com/nikolainobadi/nnex"
    url "https://github.com/nikolainobadi/nnex/releases/download/0.1.2/nnex"
    sha256 "7c9f607d43e8a1962cafcb5a99a65edb9b4325e2f4e886d91d535726e307eb78"
    license "MIT"

    def install
      bin.install "nnex"
    end
  
    test do
      system "#{bin}/nnex", "--help"
    end
  end

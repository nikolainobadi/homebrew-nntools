class Nnex < Formula
    desc "Command line tool to streamline homebrew distribution"
    homepage "https://github.com/nikolainobadi/nnex"
    url "https://github.com/nikolainobadi/nnex/releases/download/v0.1.0/nnex"
    sha256 "b396a5d785cfd4c86172b5a829b594342963c85672da13f0ff2a0077fb0109a2"
    license "MIT"

    def install
      bin.install "nnex"
    end
  
    test do
      system "#{bin}/nnex", "--help"
    end
  end

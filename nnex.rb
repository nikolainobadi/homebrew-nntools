class Nnex < Formula
    desc "Command line tool to streamline homebrew distribution"
    homepage "https://github.com/nikolainobadi/nnex"
    url "https://github.com/nikolainobadi/nnex/releases/download/1.0.0/nnex"
    sha256 "129bb30fe45888ddb93aa3b9954a95f4f080b7d4bca5d3d3daa129a8cc94816c"
    license "MIT"

    def install
      bin.install "nnex"
    end
  
    test do
      system "#{bin}/nnex", "--help"
    end
  end

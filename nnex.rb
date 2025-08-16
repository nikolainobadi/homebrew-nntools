class Nnex < Formula
    desc "Command-line tool to streamline Swift executable packaging and distribution with Homebrew"
    homepage "https://github.com/nikolainobadi/nnex"
    url "https://github.com/nikolainobadi/nnex/releases/download/v0.8.6/nnex"
    sha256 "5b3359859a635a3c3dba5e2639c276d875f8263d0f9055edd7d3e7c5e11a7066"
    license "MIT"

    def install
        bin.install "nnex"
    end

    test do
        system "#{bin}/nnex", "--help"
    end
end
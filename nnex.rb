class Nnex < Formula
    desc "Command-line tool to streamline Swift executable packaging and distribution with Homebrew"
    homepage "https://github.com/nikolainobadi/nnex"
    url "https://github.com/nikolainobadi/nnex/releases/download/v0.8.7/nnex"
    sha256 "b98a0f88565815acd65e95f62574177351daac9c8b71f3a2f40fba578c471121"
    license "MIT"

    def install
        bin.install "nnex"
    end

    test do
        system "#{bin}/nnex", "--help"
    end
end
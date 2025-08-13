class Nnex < Formula
    desc "Command-line tool to streamline Swift executable packaging and distribution with Homebrew"
    homepage "https://github.com/nikolainobadi/nnex"
    url "https://github.com/nikolainobadi/nnex/releases/download/v0.8.5/nnex"
    sha256 "bc93bec1ea9302902d8e89e8bab9b6691d8da212c652a21c50e8fb2d55bfae07"
    license "MIT"

    def install
        bin.install "nnex"
    end

    test do
        system "#{bin}/nnex", "--help"
    end
end
class Nnex < Formula
    desc "Command-line tool to streamline Swift executable packaging and distribution with Homebrew"
    homepage "https://github.com/nikolainobadi/nnex"
    url "https://github.com/nikolainobadi/nnex/releases/download/v0.8.1/nnex"
    sha256 "df64cedb5e55e383c5e59f95ef9fcf692dc43577968e048561f3f6072a590f01"
    license "MIT"

    def install
        bin.install "nnex"
    end

    test do
        system "#{bin}/nnex", "--help"
    end
end
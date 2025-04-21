class Nnex < Formula
    desc "Command-line tool to streamline Swift executable packaging and distribution with Homebrew"
    homepage "https://github.com/nikolainobadi/nnex"
    url "https://github.com/nikolainobadi/nnex/releases/download/v0.8.0/nnex"
    sha256 "8c1c362e138b84710d77a5a4405c8142aabcef871f3de0721e81897f739ba00b"
    license "MIT"

    def install
        bin.install "nnex"
    end

    test do
        system "#{bin}/nnex", "--help"
    end
end
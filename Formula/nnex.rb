class Nnex < Formula
    desc "Command-line tool to streamline Swift executable packaging and distribution with Homebrew"
    homepage "https://github.com/nikolainobadi/nnex"
    version "1.1.0"
    license "MIT"

    on_macos do
        on_arm do
            url "https://github.com/nikolainobadi/nnex/releases/download/1.1.0/nnex-arm64.tar.gz"
            sha256 "aff844f34dc892b4a6117963185e3198afc0b5ecb6f69e6a645851c8ae2d84df"
        end

        on_intel do
            url "https://github.com/nikolainobadi/nnex/releases/download/1.1.0/nnex-x86_64.tar.gz"
            sha256 "31f6e8dd9a54c869c508d285940c00b909b2ed36fe9ba81050c61e606cb5ca4f"
        end
    end

    def install
        bin.install "nnex"
    end

    test do
        system "#{bin}/nnex", "--help"
    end
end
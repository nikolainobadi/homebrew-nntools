class Nnex < Formula
    desc "Command-line tool to streamline Swift executable packaging and distribution with Homebrew"
    homepage "https://github.com/nikolainobadi/nnex"
    license "MIT"

    on_macos do
        on_arm do
            url "https://github.com/nikolainobadi/nnex/releases/download/v0.9.5/Nnex-arm64.tar.gz"
            sha256 "04fc6ee898cd3ac2beffa6c64ef972b19c15c4686d3ae316a004e7fce2359e02"
        end

        on_intel do
            url "https://github.com/nikolainobadi/nnex/releases/download/v0.9.5/Nnex-x86_64.tar.gz"
            sha256 "52398f09e7557764642bce7d8c96cd2a761e19b8a7111710e88d623e2bcffd34"
        end
    end

    def install
        bin.install "Nnex"
    end

    test do
        system "#{bin}/Nnex", "--help"
    end
end
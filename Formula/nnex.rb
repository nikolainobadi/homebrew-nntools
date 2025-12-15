class Nnex < Formula
    desc "Command-line tool to streamline Swift executable packaging and distribution with Homebrew"
    homepage "https://github.com/nikolainobadi/nnex"
    version "1.3.0"
    license "MIT"

    on_macos do
        on_arm do
            url "https://github.com/nikolainobadi/nnex/releases/download/1.3.0/nnex-arm64.tar.gz"
            sha256 "4fbc4de93beb8c1f55622db83f5bd13958a0d70f29d06a2013e6371af8b99d2f"
        end

        on_intel do
            url "https://github.com/nikolainobadi/nnex/releases/download/1.3.0/nnex-x86_64.tar.gz"
            sha256 "0ec3b0acfe9c727fdce7d20987bff8afde457edca1ed2b7939bae570f30f9220"
        end
    end

    def install
        bin.install "nnex"
    end

    test do
        system "#{bin}/nnex", "--help"
    end
end
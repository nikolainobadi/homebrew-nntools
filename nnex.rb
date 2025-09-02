class Nnex < Formula
    desc "Command-line tool to streamline Swift executable packaging and distribution with Homebrew"
    homepage "https://github.com/nikolainobadi/nnex"
    license "MIT"

    on_macos do
        on_arm do
            url "https://github.com/nikolainobadi/nnex/releases/download/v0.9.1/nnex-arm64.tar.gz"
            sha256 "74d8419479bcc2081cd28b7dbfa0b6d98892c0dbaa9304fa76c0542f63c322f4"
        end

        on_intel do
            url "https://github.com/nikolainobadi/nnex/releases/download/v0.9.1/nnex-x86_64.tar.gz"
            sha256 "7a3903280cd4a6a5ea0b08d0649c1f6af1461a9e664ce6457d1502d708286a62"
        end
    end

    def install
        bin.install "nnex"
    end

    test do
        system "#{bin}/nnex", "--help"
    end
end
class Nnex < Formula
    desc "Command-line tool to streamline Swift executable packaging and distribution with Homebrew"
    homepage "https://github.com/nikolainobadi/nnex"
    license "MIT"

    on_macos do
        on_arm do
            url "https://github.com/nikolainobadi/nnex/releases/download/v0.8.9/nnex-arm64.tar.gz"
            sha256 "c0de962fdd086869892d2c6f5c2ecf585dc7e02879d907bb58e9d19eddb1406b"
        end

        on_intel do
            url "https://github.com/nikolainobadi/nnex/releases/download/v0.8.9/nnex-x86_64.tar.gz"
            sha256 "c101035e01e0ecafaf1b74d09fbcc58a5bfc62f7a0a90a20e5cfe9ace00c7139"
        end
    end

    def install
        bin.install "nnex"
    end

    test do
        system "#{bin}/nnex", "--help"
    end
end
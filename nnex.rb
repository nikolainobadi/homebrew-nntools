class Nnex < Formula
    desc "Command-line tool to streamline Swift executable packaging and distribution with Homebrew"
    homepage "https://github.com/nikolainobadi/nnex"
    license "MIT"

    on_macos do
        on_arm do
            url "https://github.com/nikolainobadi/nnex/releases/download/v0.9.4/Nnex-arm64.tar.gz"
            sha256 "38e3c7167c99a039eeb5a9fb6e78c7ca96caf37df7eb6f0fadd8f314baa6272c"
        end

        on_intel do
            url "https://github.com/nikolainobadi/nnex/releases/download/v0.9.4/Nnex-x86_64.tar.gz"
            sha256 "7d53edbced78aadfcf81aa720ef456c010337cb524640fe6a8ce2c295a20001a"
        end
    end

    def install
        bin.install "Nnex"
    end

    test do
        system "#{bin}/Nnex", "--help"
    end
end
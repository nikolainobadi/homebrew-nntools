class Nnex < Formula
    desc "Command-line tool to streamline Swift executable packaging and distribution with Homebrew"
    homepage "https://github.com/nikolainobadi/nnex"
    license "MIT"

    on_macos do
        on_arm do
            url "https://github.com/nikolainobadi/nnex/releases/download/v0.8.8/nnex-arm64"
            sha256 "df5e34ef22940c8fbb8e49a1806b32b6db72523f968686b71371e3d1c5f96129"
        end

        on_intel do
            url "https://github.com/nikolainobadi/nnex/releases/download/v0.8.8/nnex-x86_64"
            sha256 "e37b47ea9f30efbfbe84fdae2fa073c5392937e89f7edc29ec00e685e10a765b"
        end
    end

    def install
        bin.install "nnex"
    end

    test do
        system "#{bin}/nnex", "--help"
    end
end
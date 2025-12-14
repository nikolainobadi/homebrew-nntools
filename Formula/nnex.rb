class Nnex < Formula
    desc "Command-line tool to streamline Swift executable packaging and distribution with Homebrew"
    homepage "https://github.com/nikolainobadi/nnex"
    version "1.2.0"
    license "MIT"

    on_macos do
        on_arm do
            url "https://github.com/nikolainobadi/nnex/releases/download/1.2.0/nnex-arm64.tar.gz"
            sha256 "9e9c482d556b91beedbbbf17c13f013d7432a16146f7930ce55d5f325e910670"
        end

        on_intel do
            url "https://github.com/nikolainobadi/nnex/releases/download/1.2.0/nnex-x86_64.tar.gz"
            sha256 "ecbf24c9d5e564e48665dc711dc71ad24c046b2c114ebd1978452b2902ab2a0b"
        end
    end

    def install
        bin.install "nnex"
    end

    test do
        system "#{bin}/nnex", "--help"
    end
end
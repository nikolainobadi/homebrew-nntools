class Nnex < Formula
    desc "Command-line tool to streamline Swift executable packaging and distribution with Homebrew"
    homepage "https://github.com/nikolainobadi/nnex"
    version "1.0.0"
    license "MIT"

    on_macos do
        on_arm do
            url "https://github.com/nikolainobadi/nnex/releases/download/v1.0.0/nnex-arm64.tar.gz"
            sha256 "7ae77445c1cedcf2fa93791e757614b14233b30b45ecf4e2b238647a982b2381"
        end

        on_intel do
            url "https://github.com/nikolainobadi/nnex/releases/download/v1.0.0/nnex-x86_64.tar.gz"
            sha256 "6ca05b2f335eead45d7e695939d65a8550a574b22ebe2ab1e9273e7cc7882841"
        end
    end

    def install
        bin.install "nnex"
    end

    test do
        system "#{bin}/nnex", "--help"
    end
end
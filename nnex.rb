class Nnex < Formula
    desc "Command-line tool to streamline Swift executable packaging and distribution with Homebrew"
    homepage "https://github.com/nikolainobadi/nnex"
    license "MIT"

    on_macos do
        on_arm do
            url "https://github.com/nikolainobadi/nnex/releases/download/v0.9.0/nnex-arm64.tar.gz"
            sha256 "cffcd996ca0690813dfface4a13390f263cb2a8ec4770d76642319519ad29d21"
        end

        on_intel do
            url "https://github.com/nikolainobadi/nnex/releases/download/v0.9.0/nnex-x86_64.tar.gz"
            sha256 "fd1889b9acae862652282cafde3a5a8125e2431ab8db1dbee7759be19fb397c1"
        end
    end

    def install
        bin.install "nnex"
    end

    test do
        system "#{bin}/nnex", "--help"
    end
end
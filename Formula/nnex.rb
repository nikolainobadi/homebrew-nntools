class Nnex < Formula
    desc "Command-line tool to streamline Swift executable packaging and distribution with Homebrew"
    homepage "https://github.com/nikolainobadi/nnex"
    version "v0.9.6"
    license "MIT"

    on_macos do
        on_arm do
            url "https://github.com/nikolainobadi/nnex/releases/download/v0.9.6/nnex-arm64.tar.gz"
            sha256 "064795c5f6ad2e8682d38bcbb595d625ad1104dd89ca47b99088457d6da2449a"
        end

        on_intel do
            url "https://github.com/nikolainobadi/nnex/releases/download/v0.9.6/nnex-x86_64.tar.gz"
            sha256 "e0412d3e9b7c24a52b0a3f4f90462344a04d14c78e3e2d59f1535445fcf22736"
        end
    end

    def install
        bin.install "nnex"
    end

    test do
        system "#{bin}/nnex", "--help"
    end
end
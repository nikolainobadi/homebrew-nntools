class Nnex < Formula
    desc "Command-line tool to streamline Swift executable packaging and distribution with Homebrew"
    homepage "https://github.com/nikolainobadi/nnex"
    license "MIT"

    on_macos do
        on_arm do
            url "https://github.com/nikolainobadi/nnex/releases/download/v0.8.12/nnex-arm64.tar.gz"
            sha256 "e991d58f2067e647e559c9efae595505704c97c113c3ab376108d91629b9ec5e"
        end

        on_intel do
            url "https://github.com/nikolainobadi/nnex/releases/download/v0.8.12/nnex-x86_64.tar.gz"
            sha256 "4eeef3e4be68142505007cc943e673c36aaf1d02441252e975884964e8c513f6"
        end
    end

    def install
        bin.install "nnex"
    end

    test do
        system "#{bin}/nnex", "--help"
    end
end
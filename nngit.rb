class Nngit < Formula
    desc "Git-wrapper command-line tool"
    homepage "https://github.com/nikolainobadi/nngit"
    license "MIT"

    on_macos do
        on_arm do
            url "https://github.com/nikolainobadi/nngit/releases/download/v0.7.0/nngit-arm64.tar.gz"
            sha256 "cb8235160839b8c852a18d0307712cc3ecc1717209da6ddc13515435caba42ea"
        end

        on_intel do
            url "https://github.com/nikolainobadi/nngit/releases/download/v0.7.0/nngit-x86_64.tar.gz"
            sha256 "bc08c18b55c764072dfc15086ce368ce8b8ddff754a6ad65256fc5b91338fe02"
        end
    end

    def install
        bin.install "nngit"
    end

    test do
        system "#{bin}/nngit", "--help"
    end
end
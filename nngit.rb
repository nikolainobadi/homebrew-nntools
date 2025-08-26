class Nngit < Formula
    desc "Git-wrapper command-line tool"
    homepage "https://github.com/nikolainobadi/nngit"
    license "MIT"

    on_macos do
        on_arm do
            url "https://github.com/nikolainobadi/nngit/releases/download/v0.5.1/nngit-arm64.tar.gz"
            sha256 "70ebdbe034bc670de01ef378c3c63ee97f04ecc2d93ebb58b46cc29372fd259c"
        end

        on_intel do
            url "https://github.com/nikolainobadi/nngit/releases/download/v0.5.1/nngit-x86_64.tar.gz"
            sha256 "962c1ea23912df05f69af0121509545c04c482a5558953ea3c7bf4d3ea99c994"
        end
    end

    def install
        bin.install "nngit"
    end

    test do
        system "#{bin}/nngit", "--help"
    end
end
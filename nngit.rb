class Nngit < Formula
    desc "Git-wrapper command-line tool"
    homepage "https://github.com/nikolainobadi/nngit"
    license "MIT"

    on_macos do
        on_arm do
            url "https://github.com/nikolainobadi/nngit/releases/download/v0.5.2/nngit-arm64.tar.gz"
            sha256 "9b1b3d019b9f84d3bbaa9fe9e726087256d8db33c9f07993d82297a65b0ed4b5"
        end

        on_intel do
            url "https://github.com/nikolainobadi/nngit/releases/download/v0.5.2/nngit-x86_64.tar.gz"
            sha256 "c93cf390d6768065245adc6ef7ed6bf8a2cdb1f10166d2ed7f3a41670d706bc6"
        end
    end

    def install
        bin.install "nngit"
    end

    test do
        system "#{bin}/nngit", "--help"
    end
end
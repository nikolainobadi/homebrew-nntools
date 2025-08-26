class Nngit < Formula
    desc "Git-wrapper command-line tool"
    homepage "https://github.com/nikolainobadi/nngit"
    license "MIT"

    on_macos do
        on_arm do
            url "https://github.com/nikolainobadi/nngit/releases/download/v0.5.0/nngit-arm64.tar.gz"
            sha256 "e733d30a79cd9936bc737bee2aafac966175695c20349a1eb91ca727e23cb47d"
        end

        on_intel do
            url "https://github.com/nikolainobadi/nngit/releases/download/v0.5.0/nngit-x86_64.tar.gz"
            sha256 "a3b6d6d8f7900baab091ded834db51bffa3eaf6e4352888cf6dbedaeaa0af56f"
        end
    end

    def install
        bin.install "nngit"
    end

    test do
        system "#{bin}/nngit", "--help"
    end
end
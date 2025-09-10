class Nnex < Formula
    desc "Command-line tool to streamline Swift executable packaging and distribution with Homebrew"
    homepage "https://github.com/nikolainobadi/nnex"
    license "MIT"

    on_macos do
        on_arm do
            url "https://github.com/nikolainobadi/nnex/releases/download/v0.9.2/nnex-arm64.tar.gz"
            sha256 "57502911fd3828b9e0b37bb0a7f14c17feada89d0e22607ae8b2012340023a98"
        end

        on_intel do
            url "https://github.com/nikolainobadi/nnex/releases/download/v0.9.2/nnex-x86_64.tar.gz"
            sha256 "09cf5d4810cb7ab5275dc7b39998b01d6339a36a8681ea0b279eaed63e03a886"
        end
    end

    def install
        bin.install "nnex"
    end

    test do
        system "#{bin}/nnex", "--help"
    end
end
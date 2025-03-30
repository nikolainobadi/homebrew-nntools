class Nnapp < Formula
    desc "a command-line too to quickly launch apps"
    homepage "https://github.com/nikolainobadi/nnapp"
    url "https://github.com/nikolainobadi/nnapp/releases/download/v0.1.0/nnapp"
    sha256 "6132cb9da9f695817bff830c08187fa3a4e875a41d57e9190738ad4e1e15e6ca"
    license "MIT"

    def install
        bin.install "nnapp"
    end

    test do
        system "#{bin}/nnapp", "--help"
    end
end
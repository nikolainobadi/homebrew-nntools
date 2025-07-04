class Nngit < Formula
    desc "Git-wrapper command-line tool"
    homepage "https://github.com/nikolainobadi/nngit"
    url "https://github.com/nikolainobadi/nngit/releases/download/v0.3.6/nngit"
    sha256 "fe8851a588abada5a7e6e8b45b45105d4738b5b42ad0b7e0643cb85004dfd2f3"
    license "MIT"

    def install
        bin.install "nngit"
    end

    test do
        system "#{bin}/nngit", "--help"
    end
end
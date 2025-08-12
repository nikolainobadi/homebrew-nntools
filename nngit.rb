class Nngit < Formula
    desc "Git-wrapper command-line tool"
    homepage "https://github.com/nikolainobadi/nngit"
    url "https://github.com/nikolainobadi/nngit/releases/download/v0.4.1/nngit"
    sha256 "f5217a5a62a39c1768f1b40c2d2eb5f81bf03775a52d0d17ba392282412c4dfe"
    license "MIT"

    def install
        bin.install "nngit"
    end

    test do
        system "#{bin}/nngit", "--help"
    end
end
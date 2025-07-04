class Nngit < Formula
    desc "Git-wrapper command-line tool"
    homepage "https://github.com/nikolainobadi/nngit"
    url "https://github.com/nikolainobadi/nngit/releases/download/v0.3.5/nngit"
    sha256 "cd212f99d79b00c0ad53b0a6c1a95c277914cc1f53a6b2f8f4a8fd2189b68c71"
    license "MIT"

    def install
        bin.install "nngit"
    end

    test do
        system "#{bin}/nngit", "--help"
    end
end
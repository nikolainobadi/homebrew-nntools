class Nngit < Formula
    desc "Git-wrapper command-line tool"
    homepage "https://github.com/nikolainobadi/nngit"
    url "https://github.com/nikolainobadi/nngit/releases/download/v0.3.3/nngit"
    sha256 "f9af61e23642e4315b221e781fae5a8ea7067283c1587e67436a505d68f35470"
    license "MIT"

    def install
        bin.install "nngit"
    end

    test do
        system "#{bin}/nngit", "--help"
    end
end
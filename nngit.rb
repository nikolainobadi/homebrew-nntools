class Nngit < Formula
    desc "Git-wrapper command-line tool"
    homepage "https://github.com/nikolainobadi/nngit"
    url "https://github.com/nikolainobadi/nngit/releases/download/v0.4.0/nngit"
    sha256 "35b4c291bff9f2fa5fa42a0dadf95f72d23534d5954acece520cc5264d0b1682"
    license "MIT"

    def install
        bin.install "nngit"
    end

    test do
        system "#{bin}/nngit", "--help"
    end
end
class Nnpurge < Formula
    desc "Command-line tool for CodePurge"
    homepage "https://github.com/CodePurge/nnpurge"
    url "https://github.com/CodePurge/nnpurge/releases/download/v0.1.0/nnpurge"
    sha256 "81999971f331fc199ab8d5f0662a0c00d6e12307ef7d52e19107bd439cafd99a"
    license "MIT"

    def install
        bin.install "nnpurge"
    end

    test do
        system "#{bin}/nnpurge", "--help"
    end
end
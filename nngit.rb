class Nngit < Formula
    desc "Git-wrapper command-line tool"
    homepage "https://github.com/nikolainobadi/nngit"
    url "https://github.com/nikolainobadi/nngit/releases/download/v0.3.1/nngit"
    sha256 "422c2b50a9e9a69f5b86c1076076c722d8f4a6962764dd433296defe195e365a"
    license "MIT"

    def install
        bin.install "nngit"
    end

    test do
        system "#{bin}/nngit", "--help"
    end
end
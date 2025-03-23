class Nnex < Formula
    desc "Command line tool to streamline homebrew distribution"
    homepage "https://github.com/nikolainobadi/nnex"
    url "https://github.com/nikolainobadi/nnex/releases/download/0.1.1/nnex"
    sha256 "74c93660e4128050b57468358880c2cde6398c2a2da0d19098cd836612491a10"
    license "MIT"

    def install
      bin.install "nnex"
    end
  
    test do
      system "#{bin}/nnex", "--help"
    end
  end

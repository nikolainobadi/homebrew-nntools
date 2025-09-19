class Nnex < Formula
    desc "Command-line tool to streamline Swift executable packaging and distribution with Homebrew"
    homepage "https://github.com/nikolainobadi/nnex"
    license "MIT"

    on_macos do
        on_arm do
            url "https://github.com/nikolainobadi/nnex/releases/download/v0.9.3/nnex-arm64.tar.gz"
            sha256 "99b13f098c1a2fb791fc639d07e986f2f83209bd52c4ba21eff029e668e45a69"
        end

        on_intel do
            url "https://github.com/nikolainobadi/nnex/releases/download/v0.9.3/nnex-x86_64.tar.gz"
            sha256 "1da25352c5098f33b2f70d31ed0aab3c41260a7856267e17ab6c845faa4e964c"
        end
    end

    def install
        bin.install "nnex"
    end

    test do
        system "#{bin}/nnex", "--help"
    end
end
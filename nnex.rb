class Nnex < Formula
    desc "Command-line tool to streamline Swift executable packaging and distribution with Homebrew"
    homepage "https://github.com/nikolainobadi/nnex"
    license "MIT"

    on_macos do
        on_arm do
            url "https://github.com/nikolainobadi/nnex/releases/download/v0.8.11/nnex-arm64.tar.gz"
            sha256 "802c3755f6dbbb98972aac7d040be1a0ae2726d03cba5ea3233ef5f1464050d7"
        end

        on_intel do
            url "https://github.com/nikolainobadi/nnex/releases/download/v0.8.11/nnex-x86_64.tar.gz"
            sha256 "f1fc9ff563c7485dac6bd9e7426171dc2a46e79693bd67a7ddb981ecbe367947"
        end
    end

    def install
        bin.install "nnex"
    end

    test do
        system "#{bin}/nnex", "--help"
    end
end
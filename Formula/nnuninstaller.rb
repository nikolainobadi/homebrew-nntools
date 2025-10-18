class Nnuninstaller < Formula
    desc "A safe macOS command-line tool that completely uninstalls non-Apple applications and their"
    homepage "https://github.com/nikolainobadi/nnuninstaller"
    license ""

    on_macos do
        on_arm do
            url "https://github.com/nikolainobadi/nnuninstaller/releases/download/v0.1.2/nnuninstaller-arm64.tar.gz"
            sha256 "5b1b4a779dcf532f188299b7d08b5081bc4f5bb28d129d19f6e0b6bd04e22a31"
        end

        on_intel do
            url "https://github.com/nikolainobadi/nnuninstaller/releases/download/v0.1.2/nnuninstaller-x86_64.tar.gz"
            sha256 "960db6ba5fa05598dbfcbbf5ef321fcf35722e69c557249f7ff6b21bfc19c5c2"
        end
    end

    def install
        bin.install "nnuninstaller"
    end

    test do
        system "#{bin}/nnuninstaller", "--help"
    end
end
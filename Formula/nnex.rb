class Nnex < Formula
    desc "Command-line tool to streamline Swift executable packaging and distribution with Homebrew"
    homepage "https://github.com/nikolainobadi/nnex"
    version "0.9.7"
    license "MIT"

    on_macos do
        on_arm do
            url "https://github.com/nikolainobadi/nnex/releases/download/v0.9.7/nnex-arm64.tar.gz"
            sha256 "664e808ec4f744d3c828e3ac26eac8fbfe994be922d357b96275561ddfdb4cba"
        end

        on_intel do
            url "https://github.com/nikolainobadi/nnex/releases/download/v0.9.7/nnex-x86_64.tar.gz"
            sha256 "499623598725771f129d8315fed5d186dc034666f3409d86dfb1599ceddb0bd5"
        end
    end

    def install
        bin.install "nnex"
    end

    test do
        system "#{bin}/nnex", "--help"
    end
end
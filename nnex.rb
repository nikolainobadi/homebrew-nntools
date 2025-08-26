class Nnex < Formula
    desc "Command-line tool to streamline Swift executable packaging and distribution with Homebrew"
    homepage "https://github.com/nikolainobadi/nnex"
    license "MIT"

    on_macos do
        on_arm do
            url "https://github.com/nikolainobadi/nnex/releases/download/v0.8.10/nnex-arm64.tar.gz"
            sha256 "799f5ec057b520e91f52d2f69c081ec60379bd718023709a17cb33c6e6e923a8"
        end

        on_intel do
            url "https://github.com/nikolainobadi/nnex/releases/download/v0.8.10/nnex-x86_64.tar.gz"
            sha256 "37e61518e60c32837f032b52be278497bbcff0686fd46dbc3e7bfc6fa1de83b1"
        end
    end

    def install
        bin.install "nnex"
    end

    test do
        system "#{bin}/nnex", "--help"
    end
end
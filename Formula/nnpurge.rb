class Nnpurge < Formula
    desc "Command-line tool for CodePurge"
    homepage "https://github.com/CodePurge/nnpurge"
    license "MIT"

    on_macos do
        on_arm do
            url "https://github.com/CodePurge/nnpurge/releases/download/v0.2.1/nnpurge-arm64.tar.gz"
            sha256 "3aacfce1fc470be1029328bda96a17961a1b17f01f033309ca1f93b1ed1c76cb"
        end

        on_intel do
            url "https://github.com/CodePurge/nnpurge/releases/download/v0.2.1/nnpurge-x86_64.tar.gz"
            sha256 "166261f80dfa80196adf12b34c502a669654f5d171eb2f4980ff94159daacb0f"
        end
    end

    def install
        bin.install "nnpurge"
    end

    test do
        system "#{bin}/nnpurge", "--help"
    end
end
class Nnpurge < Formula
    desc "Command-line tool for CodePurge"
    homepage "https://github.com/CodePurge/nnpurge"
    license "MIT"

    on_macos do
        on_arm do
            url "https://github.com/CodePurge/nnpurge/releases/download/v0.2.0/nnpurge-arm64.tar.gz"
            sha256 "9f3802a966fc09c9d8aac17e1f2b98e8cd2afa9f6b01e20645b1a483a39ddc88"
        end

        on_intel do
            url "https://github.com/CodePurge/nnpurge/releases/download/v0.2.0/nnpurge-x86_64.tar.gz"
            sha256 "5f0e41f9bdb031035768cf6362d077a64c0be619d7768b348c65bbaa1ba259bc"
        end
    end

    def install
        bin.install "nnpurge"
    end

    test do
        system "#{bin}/nnpurge", "--help"
    end
end
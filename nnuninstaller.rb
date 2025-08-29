class Nnuninstaller < Formula
    desc "A safe macOS command-line tool that completely uninstalls non-Apple applications and their"
    homepage "https://github.com/nikolainobadi/nnuninstaller"
    license ""

    on_macos do
        on_arm do
            url "https://github.com/nikolainobadi/nnuninstaller/releases/download/v0.1.1/nnuninstaller-arm64.tar.gz"
            sha256 "c0667be3892f138d0dfff92d6f1a1d7b0e02367e1de284f644c1986097072f8a"
        end

        on_intel do
            url "https://github.com/nikolainobadi/nnuninstaller/releases/download/v0.1.1/nnuninstaller-x86_64.tar.gz"
            sha256 "a1eeb88e958cf577b15ec26b4ce3a2abb570d7e3c53a55a780e324519e66eb88"
        end
    end

    def install
        bin.install "nnuninstaller"
    end

    test do
        system "#{bin}/nnuninstaller", "--help"
    end
end
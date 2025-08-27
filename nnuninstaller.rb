class Nnuninstaller < Formula
    desc "A safe macOS command-line tool that completely uninstalls non-Apple applications and their"
    homepage "https://github.com/nikolainobadi/nnuninstaller"
    license ""

    on_macos do
        on_arm do
            url "https://github.com/nikolainobadi/nnuninstaller/releases/download/v0.1.0/nnuninstaller-arm64.tar.gz"
            sha256 "66a897ae9d4dc159432b4fee9bf02a602ee5ac13fb411cdd9d7dac81a18b34c0"
        end

        on_intel do
            url "https://github.com/nikolainobadi/nnuninstaller/releases/download/v0.1.0/nnuninstaller-x86_64.tar.gz"
            sha256 "fd698bd62a8f7564cbdbbbf7486ca1ccd5e9a92194b66c80d4723b9eef5c890b"
        end
    end

    def install
        bin.install "nnuninstaller"
    end

    test do
        system "#{bin}/nnuninstaller", "--help"
    end
end
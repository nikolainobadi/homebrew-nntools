class Nnapp < Formula
    desc "Utility to easily manage Xcode projects and Swift Packages and quickly launch them from command-line"
    homepage "https://github.com/nikolainobadi/nnapp"
    version "0.9.0"
    license "MIT"

    on_macos do
        on_arm do
            url "https://github.com/nikolainobadi/nnapp/releases/download/0.9.0/nnapp-arm64.tar.gz"
            sha256 "68085cf9b8da3272d1fdc5dc8ee8a93e03d5399fd00ffb8f6c0b28f9ae0f2a4c"
        end

        on_intel do
            url "https://github.com/nikolainobadi/nnapp/releases/download/0.9.0/nnapp-x86_64.tar.gz"
            sha256 "bc7e0addba5421a301572088aa3bf973e40df81c8ebc178f9488d6eec04c31e5"
        end
    end

    def install
        bin.install "nnapp"
    end

    test do
        system "#{bin}/nnapp", "--help"
    end
end

class Nnapp < Formula
    desc "Utility to easily manage Xcode projects and Swift Packages and quickly launch them from command-line"
    homepage "https://github.com/nikolainobadi/nnapp"
    version "0.7.0"
    license "MIT"

    on_macos do
        on_arm do
            url "https://github.com/nikolainobadi/nnapp/releases/download/v0.7.0/nnapp-arm64.tar.gz"
            sha256 "1a3a1796b82c29a93f89d761070416ce29bb94f33a37091d03cccadc48987d3e"
        end

        on_intel do
            url "https://github.com/nikolainobadi/nnapp/releases/download/v0.7.0/nnapp-x86_64.tar.gz"
            sha256 "47dad9f0f86ec7e85fb72d902dfb8a6efe67f38e97343d26451ca6febd69810f"
        end
    end

    def install
        bin.install "nnapp"
    end

    test do
        system "#{bin}/nnapp", "--help"
    end
end
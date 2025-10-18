class Nnapp < Formula
    desc "Utility to easily manage Xcode projects and Swift Packages and quickly launch them from command-line"
    homepage "https://github.com/nikolainobadi/nnapp"
    license "MIT"

    on_macos do
        on_arm do
            url "https://github.com/nikolainobadi/nnapp/releases/download/v0.6.0/nnapp-arm64.tar.gz"
            sha256 "f8365f22dc1338a5157ef6dd0ef8fa8f7a97a85c92388b38291dcaa5effb5da1"
        end

        on_intel do
            url "https://github.com/nikolainobadi/nnapp/releases/download/v0.6.0/nnapp-x86_64.tar.gz"
            sha256 "f0ad8282d169f4197524b968e446123bdcf512a6f62a16c216a1852efafb4267"
        end
    end

    def install
        bin.install "nnapp"
    end

    test do
        system "#{bin}/nnapp", "--help"
    end
end
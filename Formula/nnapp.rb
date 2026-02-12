class Nnapp < Formula
    desc "Utility to easily manage Xcode projects and Swift Packages and quickly launch them from command-line"
    homepage "https://github.com/nikolainobadi/nnapp"
    version "0.8.0"
    license "MIT"

    on_macos do
        on_arm do
            url "https://github.com/nikolainobadi/nnapp/releases/download/0.8.0/nnapp-arm64.tar.gz"
            sha256 "bd4dbb6d91c0c947333875213bd2c082bcc37812ba5244eb23fd5a08d0d38e00"
        end

        on_intel do
            url "https://github.com/nikolainobadi/nnapp/releases/download/0.8.0/nnapp-x86_64.tar.gz"
            sha256 "60af43ca5905f290e7558dfecdd3b2dec41bbf2884b85657c849e4adf367dd76"
        end
    end

    def install
        bin.install "nnapp"
    end

    test do
        system "#{bin}/nnapp", "--help"
    end
end
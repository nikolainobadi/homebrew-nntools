class Nnapp < Formula
    desc "Utility to easily manage Xcode projects and Swift Packages and quickly launch them from command-line"
    homepage "https://github.com/nikolainobadi/nnapp"
    version "0.7.1"
    license "MIT"

    on_macos do
        on_arm do
            url "https://github.com/nikolainobadi/nnapp/releases/download/0.7.1/nnapp-arm64.tar.gz"
            sha256 "55845a40ca293d01c03584ff6506aa974390b365fc5fdf271fe7e91fb2c685c9"
        end

        on_intel do
            url "https://github.com/nikolainobadi/nnapp/releases/download/0.7.1/nnapp-x86_64.tar.gz"
            sha256 "eb8d012a8fb567143f5a55c3f4e9110e35aa79083d07573bbd6bf1982d8ab1cc"
        end
    end

    def install
        bin.install "nnapp"
    end

    test do
        system "#{bin}/nnapp", "--help"
    end
end
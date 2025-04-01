class Nnapp < Formula
    desc "Utility to easily manage Xcode projects and Swift Packages and quickly launch them from command-line"
    homepage "https://github.com/nikolainobadi/nnapp"
    url "https://github.com/nikolainobadi/nnapp/releases/download/v0.5.0/nnapp"
    sha256 "5f7645694fbdc0caff9e996e75578f8bf95f117f95441bd2c55a74b07ed5470f"
    license "MIT"

    def install
        bin.install "nnapp"
    end

    test do
        system "#{bin}/nnapp", "--help"
    end
end
class Nnapp < Formula
    desc "Utility to easily manage Xcode projects and Swift Packages and quickly launch them from command-line"
    homepage "https://github.com/nikolainobadi/nnapp"
    url "https://github.com/nikolainobadi/nnapp/releases/download/v0.5.1/nnapp"
    sha256 "f51045282ca87c171083e1071d938814cd828408373fd10b0889390f0db9795c"
    license "MIT"

    def install
        bin.install "nnapp"
    end

    test do
        system "#{bin}/nnapp", "--help"
    end
end
class Nnapp < Formula
    desc "Utility to easily manage Xcode projects and Swift Packages and quickly launch them from command-line"
    homepage "https://github.com/nikolainobadi/nnapp"
    version "0.9.1"
    license "MIT"

    on_macos do
        on_arm do
            url "https://github.com/nikolainobadi/nnapp/releases/download/0.9.1/nnapp-arm64.tar.gz"
            sha256 "ffb5ff55c566f903f424d6757b50c09d091d57252f261defbb4e77500f5c975e"
        end

        on_intel do
            url "https://github.com/nikolainobadi/nnapp/releases/download/0.9.1/nnapp-x86_64.tar.gz"
            sha256 "074290b6d2fcaa7c4fe8bcf35ec73a4bf3c5447ef1948ee45c3361422ac25031"
        end
    end

    def install
        bin.install "nnapp"
    end

    test do
        system "#{bin}/nnapp", "--help"
    end
end
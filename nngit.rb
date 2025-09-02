class Nngit < Formula
    desc "Git-wrapper command-line tool"
    homepage "https://github.com/nikolainobadi/nngit"
    license "MIT"

    on_macos do
        on_arm do
            url "https://github.com/nikolainobadi/nngit/releases/download/v0.6.0/nngit-arm64.tar.gz"
            sha256 "bd889bcb0a94505d52f3e3cfb24ca430d668e238e0e8e14502e3b74475a502fb"
        end

        on_intel do
            url "https://github.com/nikolainobadi/nngit/releases/download/v0.6.0/nngit-x86_64.tar.gz"
            sha256 "6938b6fc010be92ab0acdfe1a24ca15fc34ff5c2aa649850db5a2839364103f6"
        end
    end

    def install
        bin.install "nngit"
    end

    test do
        system "#{bin}/nngit", "--help"
    end
end
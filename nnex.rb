class Nnex < Formula
    desc "Utility to manage and copy Swift project executables"
    homepage "https://github.com/nikolainobadi/NnExecutableKit"
    url "https://github.com/nikolainobadi/NnExecutableKit/archive/refs/tags/v0.5.1.tar.gz"
    sha256 "dc69f9c71f46e47b4b1c1ce054008e933d215b5a3182efd79f8ab104a013382c"
    license "MIT"

    depends_on "swift" => :build
  
    def install
      system "swift", "build", "-c", "release"
      bin.install ".build/release/nnex"
    end
  
    test do
      system "#{bin}/nnex", "--help"
    end
  end
  
class Swift-Picker-Cli < Formula
    desc "Command-line tool wrapper around SwiftPicker for single/multi selection in bash scripts"
    homepage "https://github.com/nikolainobadi/SwiftPickerCLI"
    url "https://github.com/nikolainobadi/SwiftPickerCLI/releases/download/v1.0.0/swift-picker-cli"
    sha256 "4d3b159bb33189c2c543bc6226608cc10e9e130857e1c67a747e41bd0d054f38"
    license "MIT"

    def install
        bin.install "swift-picker-cli"
    end

    test do
        system "#{bin}/swift-picker-cli", "--help"
    end
end
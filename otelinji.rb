# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Otelinji < Formula
  desc "OpenTelemetry auto-instrumentation tool for Golang."
  homepage "https://github.com/hedhyw/homebrews"
  version "0.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hedhyw/otelinji/releases/download/v0.2.4/otelinji_darwin_arm64.tar.gz"
      sha256 "fb9905d386949f79d11ca770765685a306f582cddec4dc4c73a82a1d08a24c61"

      def install
        bin.install "otelinji"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hedhyw/otelinji/releases/download/v0.2.4/otelinji_darwin_amd64.tar.gz"
      sha256 "df4e587fc3a7a946a27e6ce59583c2594031c6e02fe5632211f29e554b049554"

      def install
        bin.install "otelinji"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/hedhyw/otelinji/releases/download/v0.2.4/otelinji_linux_amd64.tar.gz"
      sha256 "7e6fa1207296ec48b1b42b41d354f532ecda28af6ed9fa391ebd838dd45684cf"

      def install
        bin.install "otelinji"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/hedhyw/otelinji/releases/download/v0.2.4/otelinji_linux_arm.tar.gz"
      sha256 "1f55f6c7638e9655bf53adb55aea791a94fe15b20051f92e6101e16e60b3e336"

      def install
        bin.install "otelinji"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hedhyw/otelinji/releases/download/v0.2.4/otelinji_linux_arm64.tar.gz"
      sha256 "6f7b6af4de6b9aabe4db6a0dcc2d1e473f427cd60b29e7d2397b1d6899863cc0"

      def install
        bin.install "otelinji"
      end
    end
  end

  test do
    system "#{bin}/otelinji", "-help"
  end
end
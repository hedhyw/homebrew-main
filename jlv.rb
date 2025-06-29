# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Jlv < Formula
  desc "JSON Log Viewer tool."
  homepage "https://github.com/hedhyw/homebrews"
  version "1.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/hedhyw/json-log-viewer/releases/download/v1.5.0/jlv_darwin_amd64.tar.gz"
      sha256 "b3974ad0c4c6dadb64be290a5c6215dc98565a91fe62be9ab47845f49b2fc435"

      def install
        bin.install "jlv"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/hedhyw/json-log-viewer/releases/download/v1.5.0/jlv_darwin_arm64.tar.gz"
      sha256 "ac5f2a123668707d04ad2a301ef81bc1d8a693970a7c77ec9613e1ef704832eb"

      def install
        bin.install "jlv"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/hedhyw/json-log-viewer/releases/download/v1.5.0/jlv_linux_amd64.tar.gz"
      sha256 "3df27ac9972cb3f45d4ec30ab47102bfbd7a8a28ee677587e33644f7d052541b"
      def install
        bin.install "jlv"
      end
    end
    if Hardware::CPU.arm? and !Hardware::CPU.is_64_bit?
      url "https://github.com/hedhyw/json-log-viewer/releases/download/v1.5.0/jlv_linux_arm.tar.gz"
      sha256 "2bb38b2b5b27c846fe52de4e8f386d8ec54871dc87169823f13cdf39db53a879"
      def install
        bin.install "jlv"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/hedhyw/json-log-viewer/releases/download/v1.5.0/jlv_linux_arm64.tar.gz"
      sha256 "cc927e73fdb25adc8ddb61ed076f4537ae8d6006afd184b64ecd2e75be6da46d"
      def install
        bin.install "jlv"
      end
    end
  end

  test do
    system "#{bin}/jlv", "-help"
  end
end

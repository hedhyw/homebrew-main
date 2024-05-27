# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Jlv < Formula
  desc "JSON Log Viewer tool."
  homepage "https://github.com/hedhyw/homebrews"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/hedhyw/json-log-viewer/releases/download/v0.4.0/jlv_darwin_amd64.tar.gz"
      sha256 "6ad75dfe85dc848b58785b2ef50f6c6575786334db57c351af1349967eeb939d"

      def install
        bin.install "jlv"
      end
    end
    on_arm do
      url "https://github.com/hedhyw/json-log-viewer/releases/download/v0.4.0/jlv_darwin_arm64.tar.gz"
      sha256 "2950489e2aa0bd9af8edc375312b23c245fcaf842322e21b59d2b8b19912bf3d"

      def install
        bin.install "jlv"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/hedhyw/json-log-viewer/releases/download/v0.4.0/jlv_linux_amd64.tar.gz"
        sha256 "ff44913ce43b56bcb6f4253b316789eb8d892e232b31c3132d8cc335b25b67ab"

        def install
          bin.install "jlv"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/hedhyw/json-log-viewer/releases/download/v0.4.0/jlv_linux_arm.tar.gz"
        sha256 "258eeecd360f27c7c168fcd86082c2dc016cdde464d35f5dfea4dd8e63f3217e"

        def install
          bin.install "jlv"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/hedhyw/json-log-viewer/releases/download/v0.4.0/jlv_linux_arm64.tar.gz"
        sha256 "5c5701e8a5ce9f954ec148e8d55bfffaad16cab24f195b16e41de281c5653790"

        def install
          bin.install "jlv"
        end
      end
    end
  end

  test do
    system "#{bin}/jlv", "-help"
  end
end

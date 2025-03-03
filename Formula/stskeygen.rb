# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Stskeygen < Formula
  desc "A commandline utility for trading directory service credentials (such as AD username and password) for AWS STS Keys."
  homepage "https://cimpress-support.atlassian.net/wiki/spaces/CloudKB/pages/15058567646/Generating+STS+access+keys+via+Auth0"
  version "3.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://ce-installation-binaries.s3.us-east-1.amazonaws.com/stskeygen/3.1.0/stskeygen_3.1.0_darwin_amd64.tar.gz"
      sha256 "893f7169ffbcba56d3296b4d0373a321c8ccf404faf220d698d5c245d36f935d"

      def install
        bin.install "stskeygen"
      end
    end
    if Hardware::CPU.arm?
      url "https://ce-installation-binaries.s3.us-east-1.amazonaws.com/stskeygen/3.1.0/stskeygen_3.1.0_darwin_arm64.tar.gz"
      sha256 "5df88ff0fa5f2c0c34b0cc730fc7744760c356b987aca3ea216cf43c6922e33a"

      def install
        bin.install "stskeygen"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://ce-installation-binaries.s3.us-east-1.amazonaws.com/stskeygen/3.1.0/stskeygen_3.1.0_linux_amd64.tar.gz"
        sha256 "2df462d099a11f3d43333a6b536e87f73c4b691b3bdc3ec2569c22973efb4d1a"

        def install
          bin.install "stskeygen"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://ce-installation-binaries.s3.us-east-1.amazonaws.com/stskeygen/3.1.0/stskeygen_3.1.0_linux_arm64.tar.gz"
        sha256 "e51eee0f8046b17068658042a7e5a27a23ffd1773aafa42e2db96dfb88fa94b4"

        def install
          bin.install "stskeygen"
        end
      end
    end
  end

  test do
    system "#{bin}/stskeygen"
  end
end

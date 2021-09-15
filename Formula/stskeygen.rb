# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Stskeygen < Formula
  desc "A commandline utility for trading directory service credentials (such as AD username and password) for AWS STS Keys."
  homepage "https://support.cimpress.cloud/hc/en-us/articles/227873908"
  version "2.2.1"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://ce-installation-binaries.s3.us-east-1.amazonaws.com/stskeygen/2.2.1/stskeygen_2.2.1_Darwin_x86_64.tar.gz"
      sha256 "a849579804041236555470671716ec68883d439b2e496972ed1732f6c67ef55b"
    end
    if Hardware::CPU.arm?
      url "https://ce-installation-binaries.s3.us-east-1.amazonaws.com/stskeygen/2.2.1/stskeygen_2.2.1_Darwin_arm64.tar.gz"
      sha256 "b48af7993637434719410c3680fc662306de8d1eaaa3dc8a1a4154ee733b6890"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://ce-installation-binaries.s3.us-east-1.amazonaws.com/stskeygen/2.2.1/stskeygen_2.2.1_Linux_x86_64.tar.gz"
      sha256 "06dba35f1cff47a6224f180f9d77ab289458b439c16b0de78ba47a173588aa49"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://ce-installation-binaries.s3.us-east-1.amazonaws.com/stskeygen/2.2.1/stskeygen_2.2.1_Linux_arm64.tar.gz"
      sha256 "80ac53d8445493f4b1485f54e0b884755813d73ea2a7dc628f1e156ccbc77b22"
    end
  end

  def install
    bin.install "stskeygen"
  end

  test do
    system "#{bin}/stskeygen"
  end
end

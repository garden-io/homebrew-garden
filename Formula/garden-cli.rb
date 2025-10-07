class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.14.9"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.14.9/garden-0.14.9-macos-arm64.tar.gz"
    sha256 "35aa0526c3b5f7a12816f50d3539b616166277eb3fdb5fb6b7629cca3d39ffda"
  else
    url "https://download.garden.io/core/0.14.9/garden-0.14.9-macos-amd64.tar.gz"
    sha256 "7d5176154a805b4bb5440beff523fe9ebe30cce2e700fca84aedf4b32279e652"
  end

  def install
    libexec.install "garden"
    bin.install_symlink libexec/"garden"
  end

  test do
    # just make sure the command works
    system bin/"garden", "--help"
  end
end

class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.16"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.16/garden-0.13.16-macos-arm64.tar.gz"
    sha256 "50b39d5a9caa77c0ad1039e4d0c7a4ae8433030230e17c385d10c0c0be6725b9"
  else
    url "https://download.garden.io/core/0.13.16/garden-0.13.16-macos-amd64.tar.gz"
    sha256 "b7d17ce2c46f9dd3dadec268d8931f88127124568e0524588c64e640234de3e2"
  end

  def install
    libexec.install "garden", "fsevents.node", "static"
    bin.install_symlink libexec/"garden"
  end

  test do
    # just make sure the command works
    system bin/"garden", "--help"
  end
end

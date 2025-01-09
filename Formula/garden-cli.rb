class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "edge-bonsai"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/edge-bonsai/garden-edge-bonsai-macos-arm64.tar.gz"
    sha256 "74c8ab071834a733e9e7092c4676a7990c7342a6dab53e729eb3fc7377dcc691"
  else
    url "https://download.garden.io/core/edge-bonsai/garden-edge-bonsai-macos-amd64.tar.gz"
    sha256 "c0d8e5652398941a26cb430925172855feed1191d8ecbb1559926e52a72f7659"
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

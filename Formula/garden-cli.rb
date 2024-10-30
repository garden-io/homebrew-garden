class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.43"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.43/garden-0.13.43-macos-arm64.tar.gz"
    sha256 "d9f7d14867e4276bb9d2f24440f27f676787f706b01d08705affdc9343c134a4"
  else
    url "https://download.garden.io/core/0.13.43/garden-0.13.43-macos-amd64.tar.gz"
    sha256 "b89be6d820e344f4f8a5036428e127cb0a942c7281b23f973219dd2d913e91c6"
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

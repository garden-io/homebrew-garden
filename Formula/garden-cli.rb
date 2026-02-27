class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://docs.garden.io"

  version "0.14.20"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.14.20/garden-0.14.20-macos-arm64.tar.gz"
    sha256 "8979e4ae9763de9f56d6508f08b0e709731a1a5a27cc922ef10415585e730e4e"
  else
    url "https://download.garden.io/core/0.14.20/garden-0.14.20-macos-amd64.tar.gz"
    sha256 "6f896305e27d2ed6a44f7b9eb385851aed56a07d04983d43a3e99a61675019de"
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

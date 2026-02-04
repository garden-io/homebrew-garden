class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.14.16"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.14.16/garden-0.14.16-macos-arm64.tar.gz"
    sha256 "d11c6a9c29ce09b4c917e4ff8c95d30b2160111495be56d11cf910e05fcebf68"
  else
    url "https://download.garden.io/core/0.14.16/garden-0.14.16-macos-amd64.tar.gz"
    sha256 "4ee3bb67f01e65a47ca421ef86e4fc082a6adcf70a0b9bc79447b36b76bed826"
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

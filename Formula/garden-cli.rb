class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.14.1"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.14.1/garden-0.14.1-macos-arm64.tar.gz"
    sha256 "205d8dd1504df4acb324799417a9d5404595e18853299805a1693211c33fe155"
  else
    url "https://download.garden.io/core/0.14.1/garden-0.14.1-macos-amd64.tar.gz"
    sha256 "501c90e232e237bf74dd4eea09d201a95097eab139d274844ba3b0814ed380e1"
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

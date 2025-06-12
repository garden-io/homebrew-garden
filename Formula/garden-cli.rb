class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.14.4"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.14.4/garden-0.14.4-macos-arm64.tar.gz"
    sha256 "6ebfa9a40448b72edcac279db745d9dfbc779975b8268ac61486f19b18d10b86"
  else
    url "https://download.garden.io/core/0.14.4/garden-0.14.4-macos-amd64.tar.gz"
    sha256 "672d359577388f6944ecfe38e48f374d3a68c592510a691287131c9b7bf05abc"
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

class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.14.12"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.14.12/garden-0.14.12-macos-arm64.tar.gz"
    sha256 "e51e6b1a3e6bc7d9985100131cda4c7c432b2f39a7b1711fadbfed460a875a4a"
  else
    url "https://download.garden.io/core/0.14.12/garden-0.14.12-macos-amd64.tar.gz"
    sha256 "a926b1c7477caf540e366eec4b1f63640996af63cdc3e8f43726febd7fe93c9f"
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

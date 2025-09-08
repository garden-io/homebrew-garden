class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.14.8"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.14.8/garden-0.14.8-macos-arm64.tar.gz"
    sha256 "80059eab8f6e184a61467a178c1828c17865dfc053596f8e1b2baff20be5c7fb"
  else
    url "https://download.garden.io/core/0.14.8/garden-0.14.8-macos-amd64.tar.gz"
    sha256 "93b9d63f2a1da36c2a8f866137f75aca46a6a7b696bc031bc69ccbb3608331e2"
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

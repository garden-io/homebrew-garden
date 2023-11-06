class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.19"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.19/garden-0.13.19-macos-arm64.tar.gz"
    sha256 "d7b1ce37f6b1c4ed8f706f3c408fc192b79462e4b415812e3afba37f2f1d6d0a"
  else
    url "https://download.garden.io/core/0.13.19/garden-0.13.19-macos-amd64.tar.gz"
    sha256 "c68bf8b600694005cd188f45dcc445d4e65807fc1a479bb150a6a6ed1b9e3e23"
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

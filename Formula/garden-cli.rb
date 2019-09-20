class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/v0.10.10/garden-v0.10.10-macos-amd64.tar.gz"
  version "0.10.10"
  sha256 "12fe299427bf38a61e6372313c2db45e4b3e6f5ca63db41595d68d56a5764a14"

  depends_on "rsync"

  def install
    libexec.install "garden", "fsevents.node", "static"
    bin.install_symlink libexec/"garden"
  end

  test do
    # just make sure the command works
    system bin/"garden", "--help"
  end
end

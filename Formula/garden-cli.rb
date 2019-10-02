class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/v0.10.12/garden-v0.10.12-macos-amd64.tar.gz"
  version "0.10.12"
  sha256 "e0cd57ff1a85a0616058bdb0ce6d73fdeac47bf5a3659040abc564827196860d"

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

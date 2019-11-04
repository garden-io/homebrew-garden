class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/v0.10.14/garden-v0.10.14-macos-amd64.tar.gz"
  version "0.10.14"
  sha256 "972af66ba5b24aefb344ecb78f66e03a1910c8b3b50af36e5ec12d33d65b8f3c"

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

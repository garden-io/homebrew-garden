class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/v0.10.8/garden-v0.10.8-macos-amd64.tar.gz"
  version "0.10.8"
  sha256 "3d01b3a3dbe703789c7d41172c516b4822db1237f3b9fa1534c23f4c747e5e58"

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

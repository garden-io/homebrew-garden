class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/v0.10.13/garden-v0.10.13-macos-amd64.tar.gz"
  version "0.10.13"
  sha256 "89aff26f14b13ab5fc18f77ee58439ff57a727cfeff29ff5911c8b938d45af7b"

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

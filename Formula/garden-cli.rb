class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/v0.10.15/garden-v0.10.15-macos-amd64.tar.gz"
  version "0.10.15"
  sha256 "1d995d47ebccd2959d6ae6271ffee7a44b4b05d7d39672b7a84f8d25d64427c5"

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

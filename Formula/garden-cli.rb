class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://download.garden.io/core/0.13.12/garden-0.13.12-macos-amd64.tar.gz"
  version "0.13.12"
  sha256 "fb3a07907d4489b5c823ac9c2db142359274bea1211937fd020c0101e18fafa5"

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

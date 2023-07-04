class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://download.garden.io/core/0.13.6/garden-0.13.6-macos-amd64.tar.gz"
  version "0.13.6"
  sha256 "dab9c3d36d88030c08621ab3ca340159ed8c2378e5c303b8b3451f9b1bbb9946"

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

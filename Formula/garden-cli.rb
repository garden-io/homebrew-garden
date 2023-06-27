class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://download.garden.io/core/0.13.4/garden-0.13.4-macos-amd64.tar.gz"
  version "0.13.4"
  sha256 "c5fedc904583801ec242010092891d4d61c69b9e5919f6e08ef06d375d56e146"

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

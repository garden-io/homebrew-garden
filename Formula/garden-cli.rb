class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://download.garden.io/core/0.13.5/garden-0.13.5-macos-amd64.tar.gz"
  version "0.13.5"
  sha256 "ba6159579da25f0f4d3ebbb1f037773412bed453f3e75853047e0cfd1ee57e39"

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

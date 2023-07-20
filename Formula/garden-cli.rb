class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://download.garden.io/core/0.13.9/garden-0.13.9-macos-amd64.tar.gz"
  version "0.13.9"
  sha256 "c96ddd26aece12c35fbf34984ad50c81cdd50fde5d6f5ad0e6b868f1ac3f8d48"

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

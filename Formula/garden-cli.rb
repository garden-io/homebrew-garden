class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/v0.9.0/garden-v0.9.0-macos-amd64.tar.gz"
  version "0.9.0"
  sha256 "613ed812aa2dc01d21b0c9abde33bc12e9b9c8dd5ef38711ccdd56183c9f6512"

  depends_on "rsync"

  def install
    libexec.install "garden", "fse.node", "static"
    bin.install_symlink libexec/"garden"
  end

  test do
    # just make sure the command works
    system bin/"garden", "--help"
  end
end

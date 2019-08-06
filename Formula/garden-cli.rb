class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/v0.10.4/garden-v0.10.4-macos-amd64.tar.gz"
  version "0.10.4"
  sha256 "11afe6ca0efe0da0b8a1825dcb0d2c6eb447d7cdb051ea83cf4e521b9afa4992"

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

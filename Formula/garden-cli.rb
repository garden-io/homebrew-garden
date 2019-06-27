class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/v0.10.0/garden-v0.10.0-macos-amd64.tar.gz"
  version "0.10.0"
  sha256 "d6718c535634831ecc5eaf19a3f4d16c1df26dd09132c9f1849ae22304c31c27"

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

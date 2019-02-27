class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/v0.9.2/garden-v0.9.2-macos-amd64.tar.gz"
  version "0.9.2"
  sha256 "05a3a9c654f9a9df65544ea537c45a8808f2ed8a622b56b790311cf4954510c6"

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

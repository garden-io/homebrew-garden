class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/v0.10.2/garden-v0.10.2-macos-amd64.tar.gz"
  version "0.10.2"
  sha256 "8e726e03a1545c172a8471d34b45430aeed2fec10d61ca0b37f991b7adec5980"

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

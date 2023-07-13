class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://download.garden.io/core/0.13.8/garden-0.13.8-macos-amd64.tar.gz"
  version "0.13.8"
  sha256 "41fea16ef9c38c8c4e48ad7a6191537be6c0714eb7a0871ef7a10558ea03e5e3"

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

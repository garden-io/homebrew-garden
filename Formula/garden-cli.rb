class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/v0.9.12/garden-v0.9.12-macos-amd64.tar.gz"
  version "0.9.12"
  sha256 "f97fb0126243243ed99bcac12e68d1e134d95bf822b33359f5ed0fb5c18e4f77"

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

class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://download.garden.io/core/0.13.13/garden-0.13.13-macos-amd64.tar.gz"
  version "0.13.13"
  sha256 "45e7d55a1657b9d4af43c8a508fdfb0e1c48379829586446dba243a515fa434c"

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

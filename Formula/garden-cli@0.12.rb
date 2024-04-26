class GardenCliAT012 < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://download.garden.io/core/0.12.70/garden-0.12.70-macos-amd64.tar.gz"
  version "0.12.70"
  sha256 "adb9c63f21f6601cb42e2bcf3a3b0752ca3df8b7cd34708b3aacf36dc39e3c70"

  depends_on "rsync"

  def install
    libexec.install "garden", "fsevents.node", "static", "better_sqlite3.node"
    bin.install_symlink libexec/"garden"
  end

  test do
    # just make sure the command works
    system bin/"garden", "--help"
  end
end

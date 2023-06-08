class GardenCliAT012 < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://download.garden.io/core/0.12.58/garden-0.12.58-macos-amd64.tar.gz"
  version "0.12.58"
  sha256 "05746c007ca75791d34cd88ded55feb2119aeaff7ed874fc1e7887baef521b39"

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

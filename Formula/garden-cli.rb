class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/0.12.25/garden-0.12.25-macos-amd64.tar.gz"
  version "0.12.25"
  sha256 "21d8dff9630d8e5b45900eb3857e2bcc895ac43121e926f13528d79dd1e6e18c"

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

class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/0.12.30/garden-0.12.30-macos-amd64.tar.gz"
  version "0.12.30"
  sha256 "e7bfc17f84cdc2c14139394568ec1f6129c1f4e25c52652021d6fe29002e2956"

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

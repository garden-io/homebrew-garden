class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/0.12.35/garden-0.12.35-macos-amd64.tar.gz"
  version "0.12.35"
  sha256 "c47c104098630c8110593248592ef6d9ec4a8a2c3ec547958d3e1fcdc0a8d99b"

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

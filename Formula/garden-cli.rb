class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/0.12.12/garden-0.12.12-macos-amd64.tar.gz"
  version "0.12.12"
  sha256 "3accf59b39f086bcc9703a4853949f942cf70dd28571d58d277e9f8a9ed91bcc"

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

class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.25"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.25/garden-0.13.25-macos-arm64.tar.gz"
    sha256 "396231fd65509b966207407f92c11344300b0987d7f4f8a7364b015449537dbc"
  else
    url "https://download.garden.io/core/0.13.25/garden-0.13.25-macos-amd64.tar.gz"
    sha256 "d584f490264762cccd7ef2b8209ee91fc85d59089afa71f93ad249f3c88c1033"
  end

  def install
    libexec.install "garden"
    bin.install_symlink libexec/"garden"
  end

  test do
    # just make sure the command works
    system bin/"garden", "--help"
  end
end

class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.13"

  depends_on "rsync"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.13/garden-0.13.13-macos-arm64.tar.gz"
    sha256 "d415fd275e16ef87fe762d433c9551cff3b99d0605215975b27a583e5dee6829"
  else
    url "https://download.garden.io/core/0.13.13/garden-0.13.13-macos-amd64.tar.gz"
    sha256 "45e7d55a1657b9d4af43c8a508fdfb0e1c48379829586446dba243a515fa434c"
  end

  def install
    libexec.install "garden", "fsevents.node", "static"
    bin.install_symlink libexec/"garden"
  end

  test do
    # just make sure the command works
    system bin/"garden", "--help"
  end
end

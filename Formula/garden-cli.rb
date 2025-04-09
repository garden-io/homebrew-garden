class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.14.2"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.14.2/garden-0.14.2-macos-arm64.tar.gz"
    sha256 "b059175fb3f73b5bae5aa37ebbc13d040680d2de33c8ef949a1bdc963bdc811b"
  else
    url "https://download.garden.io/core/0.14.2/garden-0.14.2-macos-amd64.tar.gz"
    sha256 "37ffd0dffc82f078badcad065e00af7853dd8c73ee1e78dd7200031684d515dd"
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

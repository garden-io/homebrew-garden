class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.24"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.24/garden-0.13.24-macos-arm64.tar.gz"
    sha256 "47f6325c70b480bce8086385c6666e6f9591b6b690db6c1ef5072c8480ddefc0"
  else
    url "https://download.garden.io/core/0.13.24/garden-0.13.24-macos-amd64.tar.gz"
    sha256 "19719cb7a43653793a3ac6c5254888b572468b8670f2c88838c96dd977b221ec"
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

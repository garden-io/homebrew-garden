class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.28"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.28/garden-0.13.28-macos-arm64.tar.gz"
    sha256 "6dc4f5030a6786d22333a5153fdaf0baff7b8464411b59e332e846899a4dad4f"
  else
    url "https://download.garden.io/core/0.13.28/garden-0.13.28-macos-amd64.tar.gz"
    sha256 "2421d7c6c9814f554ffed396c61fa4f3ba95d689f4ea914cabadad0b3d49eaa1"
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

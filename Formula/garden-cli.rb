class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.41"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.41/garden-0.13.41-macos-arm64.tar.gz"
    sha256 "413ccbbe3c91285c8f5e4b9700344f0a6ad7cd0f2c3d38cc2e0a030c349432ec"
  else
    url "https://download.garden.io/core/0.13.41/garden-0.13.41-macos-amd64.tar.gz"
    sha256 "6409838d03e6b9451f8cfe4f4a720451436d0419ccb3e3f249faf25a4c0ad50c"
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

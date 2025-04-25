class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.14.3"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.14.3/garden-0.14.3-macos-arm64.tar.gz"
    sha256 "0cc93785823b6cf9fe633681029f7fc567ce8a1344c823b4f331ac1477899b31"
  else
    url "https://download.garden.io/core/0.14.3/garden-0.14.3-macos-amd64.tar.gz"
    sha256 "840b5ccbab080383d689e214842e5b91d7f3dc944b1f01ff38b5187409267778"
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

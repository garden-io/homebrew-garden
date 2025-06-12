class GardenCliAT013 < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.60"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.60/garden-0.13.60-macos-arm64.tar.gz"
    sha256 "803e49db94e3ff3a8d385b4e911229e75ef7065602b7264ec41e3a6852b82318"
  else
    url "https://download.garden.io/core/0.13.60/garden-0.13.60-macos-amd64.tar.gz"
    sha256 "7ba5b8b288eb62cab5a503726575eabc6436e7416a66ac78c94c2b0960408633"
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

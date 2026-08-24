class GardenCliAT013 < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.65"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.65/garden-0.13.65-macos-arm64.tar.gz"
    sha256 "d32c6e3254e877f22f76d80cac04a1fd89bb773d8cd50525f4418b42745150df"
  else
    url "https://download.garden.io/core/0.13.65/garden-0.13.65-macos-amd64.tar.gz"
    sha256 "10f358d1de15a0ccd35cbb62747128521febe6ab1989c05cd1f043ef352d41de"
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

class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.40"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.40/garden-0.13.40-macos-arm64.tar.gz"
    sha256 "5ca54af40537dc76600525f3a3d5096d656831aa95c65ce286eb5a03c338e3ac"
  else
    url "https://download.garden.io/core/0.13.40/garden-0.13.40-macos-amd64.tar.gz"
    sha256 "41ccba6552995243c2103786c71a573b7855a7bad96544c08a7dbb0257ecb69d"
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

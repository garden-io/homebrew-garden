class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.39"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.39/garden-0.13.39-macos-arm64.tar.gz"
    sha256 "9b4bae459f800c60478f0dea502653bd75fc93edb153c15ef348fea787afc956"
  else
    url "https://download.garden.io/core/0.13.39/garden-0.13.39-macos-amd64.tar.gz"
    sha256 "657dea54a898df4665b0b34ac90f017f455006a62c7477e0746941cddc251b55"
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

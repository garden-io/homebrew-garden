class GardenCliAT013 < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.62"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.62/garden-0.13.62-macos-arm64.tar.gz"
    sha256 "2cb2abdb0f75b71946a983a8ffcb9b03368d1545d9e00ea278c7def40069f7ad"
  else
    url "https://download.garden.io/core/0.13.62/garden-0.13.62-macos-amd64.tar.gz"
    sha256 "6fdfaea3cd36ee19cad02eabfde16e8c6a82877662a71a8200767bff929efe2a"
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

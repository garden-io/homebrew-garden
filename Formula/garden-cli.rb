class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.23"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.23/garden-0.13.23-macos-arm64.tar.gz"
    sha256 "a934d75b5070ce267ceab5468e36b2aee995cc9b4bdd8a13501ea90a61fba399"
  else
    url "https://download.garden.io/core/0.13.23/garden-0.13.23-macos-amd64.tar.gz"
    sha256 "f423fb292f69b6f93525709d5b19623f9198b40a86ca5d4b317a8d8bfc04a85d"
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

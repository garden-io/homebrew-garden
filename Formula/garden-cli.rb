class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.47"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.47/garden-0.13.47-macos-arm64.tar.gz"
    sha256 "2eac61eb41c87bc7dfed80bac7ef47996b7776d8a06e35f95afe03ef1a7d4ac9"
  else
    url "https://download.garden.io/core/0.13.47/garden-0.13.47-macos-amd64.tar.gz"
    sha256 "ae64142a0ebcaa03fd7b4cc0acdeb73e9028a7567d82418ff82dfc20979eb035"
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

class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.14.5"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.14.5/garden-0.14.5-macos-arm64.tar.gz"
    sha256 "277040d72d1a2369c27d0678dc8426b14999639202526f361acfdb724b5fe584"
  else
    url "https://download.garden.io/core/0.14.5/garden-0.14.5-macos-amd64.tar.gz"
    sha256 "2a5e6ec97e6cb2142be6f99f094422629915b231bf3f4b6e904c64d6415e3a57"
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

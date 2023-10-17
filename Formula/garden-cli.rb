class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.18"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.18/garden-0.13.18-macos-arm64.tar.gz"
    sha256 "43ff839562a621c5b91baeb3c471ce528632319db743c5cad300fea194b09acf"
  else
    url "https://download.garden.io/core/0.13.18/garden-0.13.18-macos-amd64.tar.gz"
    sha256 "7f2f1adf2c0d9167dbf2bf316cd232225b6fdeacf36fb4556caedf9b4af8da7c"
  end

  def install
    libexec.install "garden", "fsevents.node", "static"
    bin.install_symlink libexec/"garden"
  end

  test do
    # just make sure the command works
    system bin/"garden", "--help"
  end
end

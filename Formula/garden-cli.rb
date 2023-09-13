class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.13"

  depends_on "rsync"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://download.garden.io/core/0.13.13/garden-0.13.13-linux-arm64.tar.gz"
      sha256 "4a488572a2dff0faf05b6285608eca0bb54c55050261c91b16ee33e5812cc503"
    else
      url "https://download.garden.io/core/0.13.13/garden-0.13.13-linux-amd64.tar.gz"
      sha256 "f6a7a208c57c0870250f0442b405d2416f121669086d87ee7734e6a4e5280199"
    end
  else
    # macos  
    if Hardware::CPU.arm?
      url "https://download.garden.io/core/0.13.13/garden-0.13.13-macos-arm64.tar.gz"
      sha256 "d415fd275e16ef87fe762d433c9551cff3b99d0605215975b27a583e5dee6829"
    else
      url "https://download.garden.io/core/0.13.13/garden-0.13.13-macos-amd64.tar.gz"
      sha256 "45e7d55a1657b9d4af43c8a508fdfb0e1c48379829586446dba243a515fa434c"
    end
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

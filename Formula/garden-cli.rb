class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "edge-bonsai"

  depends_on "rsync"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://download.garden.io/core/edge-bonsai/garden-edge-bonsai-linux-arm64.tar.gz"
      sha256 "53a2b0d7a8ef6b8134a135de97587f53732551ad77b06c8c0087b4532e930191"
    else
      url "https://download.garden.io/core/edge-bonsai/garden-edge-bonsai-linux-amd64.tar.gz"
      sha256 "c1377e176eb59d71582aa0f7b199d3c1493fe5fab597923c0d5e997dfba8fd28"
    end
  else
    # macos  
    if Hardware::CPU.arm?
      url "https://download.garden.io/core/edge-bonsai/garden-edge-bonsai-macos-arm64.tar.gz"
      sha256 "afce5a0c570d5c35bcebc0c2da58199fa26c20c94118fd7ba3c3807a7e17a7c7"
    else
      url "https://download.garden.io/core/edge-bonsai/garden-edge-bonsai-macos-amd64.tar.gz"
      sha256 "eb9e13720bfe1802ae6d2ed21e38360a0a4faaa003dec29b30b2b6fc31b69aae"
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

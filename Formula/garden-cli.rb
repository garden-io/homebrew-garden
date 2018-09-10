require "language/node"

class GardenCli < Formula
  desc "A full-featured development framework for containers and serverless"
  homepage "https://github.com/garden-io/garden"
  url "https://registry.npmjs.org/garden-cli/-/garden-cli-0.6.0.tgz"
  sha256 "9ca82dd1f488aa5b408eb8ea8b2f4a25ab59df443e70d48e6731f23d0bc1ee77"

  depends_on "node"
  depends_on "rsync"
  depends_on "stern"
  depends_on "python" => :build

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    # add a meaningful test here
  end
end

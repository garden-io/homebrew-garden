require "language/node"

class GardenCli < Formula
  desc "A full-featured development framework for containers and serverless"
  homepage "https://github.com/garden-io/garden"
  url "https://registry.npmjs.org/garden-cli/-/garden-cli-0.1.2.tgz"
  sha256 "791ce73cb95f8bfa168913b653ff0829d81dc0f1bc9329467fec5c1b8db64cd3"

  depends_on "node"
  depends_on "rsync"
  depends_on "watchman"
  depends_on "python" => :build

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    # add a meaningful test here
  end
end

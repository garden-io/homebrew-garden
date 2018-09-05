require "language/node"

class GardenCli < Formula
  desc "A full-featured development framework for containers and serverless"
  homepage "https://github.com/garden-io/garden"
  url "https://registry.npmjs.org/garden-cli/-/garden-cli-0.5.0.tgz"
  sha256 "36ecd7994e8780a7b54c294ae8282caa8881e1e290308389d9f26ced153bab28"

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

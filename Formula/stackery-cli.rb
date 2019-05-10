ENV['HOMEBREW_INSTALL_BADGE']='💻👏😸'
class StackeryCli < Formula
  desc 'Stackery CLI is a tool for cloudlocal development of serverless applications'
  homepage 'https://docs.stackery.io/docs/using-stackery/cli/'
  url 'https://ga.cli.stackery.io/updates/2.7.1/darwin-amd64.gz'
  sha256 '18bc21d486d6ec133acc598fa54b12c427e08ebd745c4b8a1190213bbf73bcc5'

  def install
    mv 'darwin-amd64', 'stackery'
    chmod '+x','stackery'
    system './stackery', 'update'
    bin.install 'stackery'
  end

  test do
    assert_match 'Usage', shell_output("#{bin}/stackery --help")
  end
end

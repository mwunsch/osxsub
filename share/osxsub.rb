require 'formula'

class Osxsub < Formula
  homepage 'https://github.com/mwunsch/osxsub'
  url 'https://github.com/mwunsch/osxsub/tarball/v0.2.0'
  sha1 'dd2385baa671a72aa8bab40fbd18d3e1295a74b4'
  head 'https://github.com/mwunsch/osxsub.git'

  def install
    bin.install 'bin/osxsub'
    prefix.install 'lib'
  end
end

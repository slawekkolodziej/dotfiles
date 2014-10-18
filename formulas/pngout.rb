require 'formula'
 
class Pngout < Formula
  url 'http://static.jonof.id.au/dl/kenutils/pngout-20110722-darwin.tar.gz'
  homepage 'http://www.jonof.id.au/kenutils'
  sha1 'f268caf5d5c72fc9a0dd42db38839b4a6b9c7094'
 
  def install
    prefix.install Dir['*']
    File.symlink(prefix+'pngout', '/usr/local/bin/pngout')
  end
end

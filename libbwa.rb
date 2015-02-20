require 'formula'

class Libbwa < Formula
  homepage 'https://github.com/chrovis/libbwa'
  url 'https://github.com/chrovis/libbwa/archive/0.7.9a.tar.gz'
  version '0.7.9a'
  sha1 '6d5e8903fee6552af55738c0cb5d09847ed848a7'

  depends_on "cmake" => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make", "install"
  end
end

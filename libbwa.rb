class Libbwa < Formula
  desc "Shared library of Burrows-Wheeler Aligner (BWA)"
  homepage "https://github.com/chrovis/libbwa"
  url "https://github.com/chrovis/libbwa/archive/0.7.9a.tar.gz"
  version "0.7.9a"
  sha256 "b1135f5850526e4f1ac357b33a2a198b5873b3dff8108b893926cc858ced7c42"

  depends_on "cmake" => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make", "install"
  end
end

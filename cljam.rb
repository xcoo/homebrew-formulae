class Cljam < Formula
  desc "Tools for manipulating DNA Sequence Alignment/Map (SAM)"
  homepage "https://chrovis.github.io/cljam/"
  url "https://github.com/chrovis/cljam/releases/download/0.7.0/cljam", :using => :nounzip
  sha256 "b4b1c3ddd0c803f3805d1c6efce2927e4927efc6e84e09d0bf955eca2500d990"

  depends_on :java

  def install
    chmod 0755, "cljam"
    libexec.install "cljam"
    bin.install_symlink libexec/"cljam"
  end

  test do
    system bin/"cljam", "version"
  end
end

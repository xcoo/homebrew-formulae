class Cljam < Formula
  desc "Tools for manipulating DNA Sequence Alignment/Map (SAM)"
  homepage "https://chrovis.github.io/cljam/"
  url "https://github.com/chrovis/cljam/releases/download/0.7.2/cljam", :using => :nounzip
  sha256 "c8a8db50e446c5ee5b385d2322c1e875705aa0068a81e8c3ad0bc9a627478998"

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

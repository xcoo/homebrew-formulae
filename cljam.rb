class Cljam < Formula
  desc "Tools for manipulating DNA Sequence Alignment/Map (SAM)"
  homepage "https://chrovis.github.io/cljam/"
  url "https://github.com/chrovis/cljam/releases/download/0.5.0/cljam", :using => :nounzip
  sha256 "0ae03b19a844d60575b7ca37bb21f6d18ff02213df44287ebf7a1d69eb098607"

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

class Cljam < Formula
  desc "Tools for manipulating DNA Sequence Alignment/Map (SAM)"
  homepage "https://chrovis.github.io/cljam/"
  url "https://github.com/chrovis/cljam/releases/download/0.7.4/cljam", :using => :nounzip
  sha256 "b1b8a78e48bae6dc8f509f03669ac465ea610def98a5a4adc6e9c93457d02ffc"

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

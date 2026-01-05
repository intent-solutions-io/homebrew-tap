class Gvid < Formula
  desc "Mission Control dashboard for Gastown multi-agent workspaces"
  homepage "https://github.com/intent-solutions-io/gastown-viewer-intent"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/intent-solutions-io/gastown-viewer-intent/releases/download/v0.1.3/gvid_0.1.3_darwin_amd64.tar.gz"
      sha256 "c99d1e2fc7284d75a2f88bf0cbb72450d209c297a61f11eef208cb35f69d704d"
    end
    on_arm do
      url "https://github.com/intent-solutions-io/gastown-viewer-intent/releases/download/v0.1.3/gvid_0.1.3_darwin_arm64.tar.gz"
      sha256 "35b58183ad3b33e04731cf089eb5bf05cb498ce2dc8068ddef94c345e1486e14"
    end
  end

  def install
    bin.install "gvid"
    bin.install "gvi-tui"
  end

  test do
    system "#{bin}/gvid", "--version"
  end
end

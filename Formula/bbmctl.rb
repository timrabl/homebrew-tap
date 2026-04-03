class Bbmctl < Formula
  desc "CLI for the German Breitbandmessung broadband measurement API"
  homepage "https://github.com/timrabl/bbmctl"
  version "0.1.0"
  license "AGPL-3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/timrabl/bbmctl/releases/download/v#{version}/bbmctl-v#{version}-aarch64-apple-darwin.tar.gz"
      # sha256 will be updated by CI on release
    else
      url "https://github.com/timrabl/bbmctl/releases/download/v#{version}/bbmctl-v#{version}-x86_64-apple-darwin.tar.gz"
    end
  end

  on_linux do
    url "https://github.com/timrabl/bbmctl/releases/download/v#{version}/bbmctl-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
  end

  def install
    bin.install "bbmctl"
  end

  test do
    assert_match "bbmctl #{version}", shell_output("#{bin}/bbmctl --version")
  end
end

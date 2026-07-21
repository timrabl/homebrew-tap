class Bbmctl < Formula
  desc "CLI for the German Breitbandmessung broadband measurement API"
  homepage "https://github.com/timrabl/bbmctl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/timrabl/bbmctl/releases/download/v0.2.0/bbmctl-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "bd8eb0755213d398ac52df53c26b5baecb07b0eb6abb311868510e47b0fe92f1"
    end
    on_intel do
      url "https://github.com/timrabl/bbmctl/releases/download/v0.2.0/bbmctl-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "4434975f31fe4cb18f05569441a249e99c8a06fc4223db1332dcc4c686cba40d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/timrabl/bbmctl/releases/download/v0.2.0/bbmctl-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4a07a64591e8d6b3d9e9374a7823813148e0da99ba79eab4874debe9748277a4"
    end
  end

  def install
    bin.install "bbmctl"
    generate_completions_from_executable(bin/"bbmctl", "completions")
  end

  test do
    assert_match "bbmctl #{version}", shell_output("#{bin}/bbmctl --version")
  end
end

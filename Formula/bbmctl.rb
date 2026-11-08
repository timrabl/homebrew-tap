class Bbmctl < Formula
  desc "CLI for the German Breitbandmessung broadband measurement API"
  homepage "https://github.com/timrabl/bbmctl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/timrabl/bbmctl/releases/download/v0.2.2/bbmctl-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "f0687f5f27a46a1abac75dc3c69120cfa7aa7b2c38f49acb9fb2ba22327f6721"
    end
    on_intel do
      url "https://github.com/timrabl/bbmctl/releases/download/v0.2.2/bbmctl-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "df803c974adb451d29dfe764f88e73bc1f67f1d670cc1b79348d21f547ba4305"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/timrabl/bbmctl/releases/download/v0.2.2/bbmctl-v0.2.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c758afc9dc7a9e20615b5d7636d8459d0e523d00c38d5b164e9f115a7f26d305"
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

class Bbmctl < Formula
  desc "CLI for the German Breitbandmessung broadband measurement API"
  homepage "https://github.com/timrabl/bbmctl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/timrabl/bbmctl/releases/download/v0.1.2/bbmctl-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "91ff07205b33228ea8c33a6e758521770c7ad525b4003c37fff80840569e5e93"
    end
    on_intel do
      url "https://github.com/timrabl/bbmctl/releases/download/v0.1.2/bbmctl-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "03267032716c9d451ae125a5e59596456fe33574f790be6196b46e612073514e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/timrabl/bbmctl/releases/download/v0.1.2/bbmctl-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9d8fdf7841581d7c32ec6f8a50e025365fcc5e15f69a5310770d60966231f525"
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

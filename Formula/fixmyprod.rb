# Written by scripts/cli-release in fixmyprod/fixmyprod for 0.1.1; edits here are overwritten.
class Fixmyprod < Formula
  desc "Broken production labs, fixed from your own terminal"
  homepage "https://fixmyprod.com"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/fixmyprod/homebrew-tap/releases/download/v0.1.1/fixmyprod_0.1.1_darwin_arm64.tar.gz"
      sha256 "9264bc6fdc865ee4efacc6c0cc70094aeb8b66d513c0f0f87214bcd399b09e61"
    end
    on_intel do
      url "https://github.com/fixmyprod/homebrew-tap/releases/download/v0.1.1/fixmyprod_0.1.1_darwin_amd64.tar.gz"
      sha256 "df56f7a55ce9ff39428d6d1c7f41a53e45ccb8e782017f0e741577de792ea012"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fixmyprod/homebrew-tap/releases/download/v0.1.1/fixmyprod_0.1.1_linux_arm64.tar.gz"
      sha256 "ef1293608a0f3a3bac85578deccfd8fc87ee38194ee36e1fe3a1260cef2d6f55"
    end
    on_intel do
      url "https://github.com/fixmyprod/homebrew-tap/releases/download/v0.1.1/fixmyprod_0.1.1_linux_amd64.tar.gz"
      sha256 "f2bb86bdfec9ca8f32a8612da37bc397cb5fe1289126fa19aad8915f2a5d4e23"
    end
  end

  def install
    bin.install "fixmyprod"
    # cobra writes them; powershell is left out, as cobra names it differently from brew's pwsh.
    generate_completions_from_executable(bin/"fixmyprod", "completion", shells: [:bash, :zsh, :fish])
  end

  test do
    assert_match "fixmyprod #{version}", shell_output("#{bin}/fixmyprod version")
  end
end

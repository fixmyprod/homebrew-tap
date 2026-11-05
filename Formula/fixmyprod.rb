# Written by scripts/cli-release in fixmyprod/fixmyprod for 0.1.7; edits here are overwritten.
class Fixmyprod < Formula
  desc "Broken production labs, fixed from your own terminal"
  homepage "https://fixmyprod.com"
  version "0.1.7"

  on_macos do
    on_arm do
      url "https://github.com/fixmyprod/homebrew-tap/releases/download/v0.1.7/fixmyprod_0.1.7_darwin_arm64.tar.gz"
      sha256 "e409ef272267a83b6ee4889eacdabbf3efb3212ab173c5d72fc41d15ba7ad292"
    end
    on_intel do
      url "https://github.com/fixmyprod/homebrew-tap/releases/download/v0.1.7/fixmyprod_0.1.7_darwin_amd64.tar.gz"
      sha256 "8a5300d016a2e60b6bf545ac5a1a1d272f451b9ca4c159fbbde23c4524583b7d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fixmyprod/homebrew-tap/releases/download/v0.1.7/fixmyprod_0.1.7_linux_arm64.tar.gz"
      sha256 "efc056439c030854317b467d5bb00d7fdd4fc44839137d2c5aa5e76ab8dd4bbe"
    end
    on_intel do
      url "https://github.com/fixmyprod/homebrew-tap/releases/download/v0.1.7/fixmyprod_0.1.7_linux_amd64.tar.gz"
      sha256 "9f6cb9eb193cc6c31557685ed9af16cd56b4dc0e06277d9e91bd77f452b5faa5"
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

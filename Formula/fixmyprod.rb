# Written by scripts/cli-release in fixmyprod/fixmyprod for 0.1.5; edits here are overwritten.
class Fixmyprod < Formula
  desc "Broken production labs, fixed from your own terminal"
  homepage "https://fixmyprod.com"
  version "0.1.5"

  on_macos do
    on_arm do
      url "https://github.com/fixmyprod/homebrew-tap/releases/download/v0.1.5/fixmyprod_0.1.5_darwin_arm64.tar.gz"
      sha256 "1f053c81d141b4f9b3a669039fb734737b70f27d9b9382f453a66a1122973b4f"
    end
    on_intel do
      url "https://github.com/fixmyprod/homebrew-tap/releases/download/v0.1.5/fixmyprod_0.1.5_darwin_amd64.tar.gz"
      sha256 "c9b17116d4f3040b6f44373ef152f543cb532a0131375cf471fb26906f204512"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fixmyprod/homebrew-tap/releases/download/v0.1.5/fixmyprod_0.1.5_linux_arm64.tar.gz"
      sha256 "0e5695ce9a4e63d3b73fef23cef82ad5bd7b14652d03c01f5c9d6ffd9efd9bf3"
    end
    on_intel do
      url "https://github.com/fixmyprod/homebrew-tap/releases/download/v0.1.5/fixmyprod_0.1.5_linux_amd64.tar.gz"
      sha256 "d525704df2020b6af96602e8fd7949d52656263ab04516e889c56a41269db5e2"
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

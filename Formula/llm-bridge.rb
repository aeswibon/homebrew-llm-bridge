class LlmBridge < Formula
  desc "Use any AI IDE's model catalog from any OpenAI-compatible client"
  homepage "https://github.com/aeswibon/llm-bridge"
  url "https://github.com/aeswibon/llm-bridge/releases/download/v1.2.0/llm-bridge-macos-arm64"
  sha256 "0908a1b7f9b45f083f95c47d2bcd1e202b8cd1d1855fb39a32bc72621e465afe"
  version "1.2.0"
  license "MIT"

  def install
    bin.install "llm-bridge-macos-arm64" => "llm-bridge"
  end

  test do
    assert_match "llm-bridge", shell_output("#{bin}/llm-bridge help")
  end
end

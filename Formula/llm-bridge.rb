class LlmBridge < Formula
  desc "Use any AI IDE's model catalog from any OpenAI-compatible client"
  homepage "https://github.com/aeswibon/llm-bridge"
  url "https://github.com/aeswibon/llm-bridge/releases/download/v1.0.5/llm-bridge-macos-arm64"
  sha256 "e2a0ce1d82ccea8682445192261af6e6579d2c7b16eb23029688daa3b902ef4f"
  license "MIT"

  def install
    bin.install "llm-bridge-macos-arm64" => "llm-bridge"
  end

  test do
    assert_match "llm-bridge", shell_output("#{bin}/llm-bridge help")
  end
end

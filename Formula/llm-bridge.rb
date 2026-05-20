class LlmBridge < Formula
  desc "Use any AI IDE's model catalog from any OpenAI-compatible client"
  homepage "https://github.com/aeswibon/llm-bridge"
  url "https://github.com/aeswibon/llm-bridge/releases/download/v1.1.1/llm-bridge-macos-arm64"
  sha256 "eddbc26719ad6a7dba683cc9141c739d29dd9896fc8a13c9541b90af8bff93b2"
  version "1.1.1"
  license "MIT"

  def install
    bin.install "llm-bridge-macos-arm64" => "llm-bridge"
  end

  test do
    assert_match "llm-bridge", shell_output("#{bin}/llm-bridge help")
  end
end

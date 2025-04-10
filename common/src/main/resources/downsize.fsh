#version 150
uniform sampler2D tex;
uniform vec2 textureSize;
uniform vec2 targetSize;

in vec2 texCoord;
out vec4 fragColor;

void main() {
    vec2 pixelSize = textureSize / targetSize;
    vec2 blockCoord = floor(texCoord * targetSize) / targetSize;
    fragColor = texture(tex, blockCoord);
}

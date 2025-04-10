#version 150
uniform sampler2D tex;
uniform vec2 screenSize;
uniform float pixelSize;

in vec2 uv;
out vec4 fragColor;

void main() {
    vec2 pixelatedUV = floor(uv * (screenSize / pixelSize)) / (screenSize / pixelSize);
    fragColor = texture(tex, pixelatedUV);
}

#version 450

# takes input from vertex buffer
layout(location = 0) in vec2 inPosition;
layout(location = 1) in vec3 inColor;   # use location = 2 for dvec3 64bit vectors

layout(location = 0) out vec3 fragColor;

void main() {
    gl_Position = vec4(inPosition, 0.0, 1.0);
    fragColor = inColor;
}
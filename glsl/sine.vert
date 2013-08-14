//basic vertex shader that distorts a plane with a sine wave
//author: Skeel Lee <skeel@skeelogy.com>

uniform float uTime;
uniform float uFreq;
uniform float uAmp;

varying vec3 vPosition;
varying vec3 vNormal;

void main() {
    float angle = uFreq * (uTime + position.x);
    float y = uAmp * sin(angle);
    vNormal = normalize(normalMatrix * vec3(-uAmp * cos(angle), 1.0, 0.0));  //analytical normal based on sin curve
    vPosition = position;
    gl_Position = projectionMatrix * modelViewMatrix * vec4(position.x, y, position.z, 1.0);
}
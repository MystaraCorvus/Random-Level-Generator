//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float Colorful[5];

void main()
{
    gl_FragColor = v_vColour * vec4(Colorful[0], Colorful[1], Colorful[2], Colorful[3]);
}

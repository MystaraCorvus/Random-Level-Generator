

varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform sampler2D UniteTex;
uniform float Unite;
uniform float Edge;
uniform vec2 UniteUV;
uniform vec2 DefaultUV;
uniform vec3 C1;
uniform vec3 C2;
void main()
{
    vec2 ConvertedUV = v_vTexcoord - DefaultUV;
    vec4 UniteCol = texture2D( UniteTex, UniteUV + ConvertedUV);

    float Unite = (Unite * (1.0 + Edge));
    Unite = (Unite - 1.0);
    
    vec4 pixcolor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    gl_FragColor = pixcolor;
    gl_FragColor.a = min(UniteCol.r + Unite, gl_FragColor.a);

    if (gl_FragColor.a <= Edge) 
    {
      gl_FragColor.rgb = mix(C1,C2,gl_FragColor.a/Edge);
    }
    gl_FragColor.a = min(ceil(gl_FragColor.a),pixcolor.a);
}


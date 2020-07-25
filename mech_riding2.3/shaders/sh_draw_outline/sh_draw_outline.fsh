//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float pixel_h;
uniform float pixel_w;

void main()
{
	vec2 offset_x;
	offset_x.x = pixel_w;
	vec2 offset_y;
	offset_y.x = pixel_h;
	
	float alpha = texture2D(gm_BaseTexture, v_vTexcoord) .a;
	
	alpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord + offset_x) .a);
	alpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord - offset_x) .a);
	alpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord + offset_y) .a);
	alpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord - offset_y) .a);
	
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	gl_FragColor.a = alpha;
}

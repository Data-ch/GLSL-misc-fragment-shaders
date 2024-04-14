uniform vec4 red_primary = vec4(1.0, 0.0, 0.0, 0.0); // @min=-2.0 @max=2.0 
uniform vec4 green_primary = vec4(0.0, 1.0, 0.0, 0.0); // @min=-2.0 @max=2.0 
uniform vec4 blue_primary = vec4(0.0, 0.0, 1.0, 0.0); // @min=-2.0 @max=2.0 
uniform vec4 alpha_primary = vec4(0.0, 0.0, 0.0, 1.0); // @min=-2.0 @max=2.0 

vec4 run(vec4 color)
{
	vec4 out_color;
	mat4x4 results;
	
	results[0] = vec4(color.rrrr*red_primary);
	results[1] = vec4(color.gggg*green_primary);
	results[2] = vec4(color.bbbb*blue_primary);
	results[3] = vec4(color.aaaa*alpha_primary);
	out_color = vec4(results[0]+results[1]+results[2]+results[3]);
	return out_color;
}
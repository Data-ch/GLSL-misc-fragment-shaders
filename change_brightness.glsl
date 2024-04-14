uniform float brighness = 1.0; // @min=0.0 @max=10.0

vec4 run(vec4 color)
{
	vec4 out_color;
	out_color = color;
	out_color = vec4(color.xyz*brighness , color.w);
	return out_color;
}
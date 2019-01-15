#include "cbuffer.h"
#include "vsoutput.h.hlsl"

////////////////////////////////////////////////////////////////////////////////
// Vertex Shader
////////////////////////////////////////////////////////////////////////////////
pos_only_vert_output shadowmap_vert_main(a2v a)
{
    pos_only_vert_output o;
	// Calculate the position of the vertex against the world, view, and projection matrices.
	float4 v = float4(a.inputPosition, 1.0f);
	v = mul(v, modelMatrix);
	o.pos = mul(v, lightVP);

    return o;
}

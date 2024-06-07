﻿Shader "UModelerX_FaceId_HDRP"
{
    SubShader
    {
        Tags 
        {
            "RenderType" = "Opaque"
            "LightMode" = "UModelerXPicker"
        }
        LOD 100

        Pass //"FaceId"
        {
            ZTest LEqual
            Lighting Off
            Blend Off
            Cull Back

            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag

            #include "UnityCG.cginc"

            struct appdata
            {
                float4 vertex : POSITION;
                float4 color : COLOR;
            };

            struct v2f
            {
                float4 color : COLOR;
                float4 vertexPos : SV_POSITION;
            };

            v2f vert(appdata v)
            {
                v2f o;
                o.vertexPos = UnityObjectToClipPos(v.vertex);
                o.color = v.color;
                return o;
            }

            fixed4 frag(v2f i) : SV_Target
            {
                return i.color;
            }
            ENDCG
        }
    }
}
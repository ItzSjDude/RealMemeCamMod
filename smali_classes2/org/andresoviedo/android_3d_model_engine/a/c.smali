.class public Lorg/andresoviedo/android_3d_model_engine/a/c;
.super Ljava/lang/Object;
.source "RendererFactory.java"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/andresoviedo/android_3d_model_engine/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/andresoviedo/android_3d_model_engine/a/c;->a:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/andresoviedo/android_3d_model_engine/a/c;->b:Ljava/util/Map;

    const/4 v0, 0x3

    .line 44
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/andresoviedo/android_3d_model_engine/a/c;->c:[Ljava/lang/String;

    const-string v0, "RendererFactory"

    const-string v1, "Discovering shaders..."

    .line 48
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-class v1, Lorg/andresoviedo/android_3d_model_engine/R$raw;

    invoke-virtual {v1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    .line 50
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 51
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading shader... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    aget-object v4, v1, v2

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Lorg/andresoviedo/a/b/a;->a(Ljava/io/InputStream;)[B

    move-result-object v4

    .line 55
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    .line 56
    iget-object v4, p0, Lorg/andresoviedo/android_3d_model_engine/a/c;->a:Ljava/util/Map;

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Shaders loaded: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/a/c;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(ZZZZZ)[Ljava/lang/String;
    .locals 2

    const/4 p1, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_7

    if-eqz p3, :cond_3

    if-eqz p4, :cond_1

    if-eqz p5, :cond_0

    .line 112
    iget-object p2, p0, Lorg/andresoviedo/android_3d_model_engine/a/c;->c:[Ljava/lang/String;

    const-string p3, "shader_anim_light_texture_colors_"

    aput-object p3, p2, v1

    const-string p3, "shader_anim_light_texture_colors_vert"

    .line 113
    aput-object p3, p2, v0

    const-string p3, "shader_anim_light_texture_colors_frag"

    .line 114
    aput-object p3, p2, p1

    goto/16 :goto_0

    .line 116
    :cond_0
    iget-object p2, p0, Lorg/andresoviedo/android_3d_model_engine/a/c;->c:[Ljava/lang/String;

    const-string p3, "shader_anim_light_texture_"

    aput-object p3, p2, v1

    const-string p3, "shader_anim_light_texture_vert"

    .line 117
    aput-object p3, p2, v0

    const-string p3, "shader_anim_light_texture_frag"

    .line 118
    aput-object p3, p2, p1

    goto/16 :goto_0

    :cond_1
    if-eqz p5, :cond_2

    .line 122
    iget-object p2, p0, Lorg/andresoviedo/android_3d_model_engine/a/c;->c:[Ljava/lang/String;

    const-string p3, "shader_anim_light_colors_"

    aput-object p3, p2, v1

    const-string p3, "shader_anim_light_colors_vert"

    .line 123
    aput-object p3, p2, v0

    const-string p3, "shader_anim_light_colors_frag"

    .line 124
    aput-object p3, p2, p1

    goto/16 :goto_0

    .line 126
    :cond_2
    iget-object p2, p0, Lorg/andresoviedo/android_3d_model_engine/a/c;->c:[Ljava/lang/String;

    const-string p3, "shader_anim_light_"

    aput-object p3, p2, v1

    const-string p3, "shader_anim_light_vert"

    .line 127
    aput-object p3, p2, v0

    const-string p3, "shader_anim_light_frag"

    .line 128
    aput-object p3, p2, p1

    goto/16 :goto_0

    :cond_3
    if-eqz p4, :cond_5

    if-eqz p5, :cond_4

    .line 134
    iget-object p2, p0, Lorg/andresoviedo/android_3d_model_engine/a/c;->c:[Ljava/lang/String;

    const-string p3, "shader_anim_texture_colors_"

    aput-object p3, p2, v1

    const-string p3, "shader_anim_texture_colors_vert"

    .line 135
    aput-object p3, p2, v0

    const-string p3, "shader_anim_texture_colors_frag"

    .line 136
    aput-object p3, p2, p1

    goto/16 :goto_0

    .line 138
    :cond_4
    iget-object p2, p0, Lorg/andresoviedo/android_3d_model_engine/a/c;->c:[Ljava/lang/String;

    const-string p3, "shader_anim_texture_"

    aput-object p3, p2, v1

    const-string p3, "shader_anim_texture_vert"

    .line 139
    aput-object p3, p2, v0

    const-string p3, "shader_anim_texture_frag"

    .line 140
    aput-object p3, p2, p1

    goto/16 :goto_0

    :cond_5
    if-eqz p5, :cond_6

    .line 144
    iget-object p2, p0, Lorg/andresoviedo/android_3d_model_engine/a/c;->c:[Ljava/lang/String;

    const-string p3, "shader_anim_colors_"

    aput-object p3, p2, v1

    const-string p3, "shader_anim_colors_vert"

    .line 145
    aput-object p3, p2, v0

    const-string p3, "shader_anim_colors_frag"

    .line 146
    aput-object p3, p2, p1

    goto/16 :goto_0

    .line 148
    :cond_6
    iget-object p2, p0, Lorg/andresoviedo/android_3d_model_engine/a/c;->c:[Ljava/lang/String;

    const-string p3, "shader_anim_"

    aput-object p3, p2, v1

    const-string p3, "shader_anim_vert"

    .line 149
    aput-object p3, p2, v0

    const-string p3, "shader_anim_frag"

    .line 150
    aput-object p3, p2, p1

    goto/16 :goto_0

    :cond_7
    if-eqz p3, :cond_b

    if-eqz p4, :cond_9

    if-eqz p5, :cond_8

    .line 158
    iget-object p2, p0, Lorg/andresoviedo/android_3d_model_engine/a/c;->c:[Ljava/lang/String;

    const-string p3, "shader_light_texture_colors_"

    aput-object p3, p2, v1

    const-string p3, "shader_light_texture_colors_vert"

    .line 159
    aput-object p3, p2, v0

    const-string p3, "shader_light_texture_colors_frag"

    .line 160
    aput-object p3, p2, p1

    goto/16 :goto_0

    .line 162
    :cond_8
    iget-object p2, p0, Lorg/andresoviedo/android_3d_model_engine/a/c;->c:[Ljava/lang/String;

    const-string p3, "shader_light_texture_"

    aput-object p3, p2, v1

    const-string p3, "shader_light_texture_vert"

    .line 163
    aput-object p3, p2, v0

    const-string p3, "shader_light_texture_frag"

    .line 164
    aput-object p3, p2, p1

    goto :goto_0

    :cond_9
    if-eqz p5, :cond_a

    .line 168
    iget-object p2, p0, Lorg/andresoviedo/android_3d_model_engine/a/c;->c:[Ljava/lang/String;

    const-string p3, "shader_light_colors_"

    aput-object p3, p2, v1

    const-string p3, "shader_light_colors_vert"

    .line 169
    aput-object p3, p2, v0

    const-string p3, "shader_light_colors_frag"

    .line 170
    aput-object p3, p2, p1

    goto :goto_0

    .line 172
    :cond_a
    iget-object p2, p0, Lorg/andresoviedo/android_3d_model_engine/a/c;->c:[Ljava/lang/String;

    const-string p3, "shader_light_"

    aput-object p3, p2, v1

    const-string p3, "shader_light_vert"

    .line 173
    aput-object p3, p2, v0

    const-string p3, "shader_light_frag"

    .line 174
    aput-object p3, p2, p1

    goto :goto_0

    :cond_b
    if-eqz p4, :cond_d

    if-eqz p5, :cond_c

    .line 180
    iget-object p2, p0, Lorg/andresoviedo/android_3d_model_engine/a/c;->c:[Ljava/lang/String;

    const-string p3, "shader_texture_colors_"

    aput-object p3, p2, v1

    const-string p3, "shader_texture_colors_layer_vert"

    .line 181
    aput-object p3, p2, v0

    const-string p3, "shader_texture_colors_layer_frag"

    .line 182
    aput-object p3, p2, p1

    goto :goto_0

    .line 184
    :cond_c
    iget-object p2, p0, Lorg/andresoviedo/android_3d_model_engine/a/c;->c:[Ljava/lang/String;

    const-string p3, "shader_texture_"

    aput-object p3, p2, v1

    const-string p3, "shader_texture_vert"

    .line 185
    aput-object p3, p2, v0

    const-string p3, "shader_texture_frag"

    .line 186
    aput-object p3, p2, p1

    goto :goto_0

    :cond_d
    if-eqz p5, :cond_e

    .line 190
    iget-object p2, p0, Lorg/andresoviedo/android_3d_model_engine/a/c;->c:[Ljava/lang/String;

    const-string p3, "shader_colors_"

    aput-object p3, p2, v1

    const-string p3, "shader_colors_vert"

    .line 191
    aput-object p3, p2, v0

    const-string p3, "shader_colors_frag"

    .line 192
    aput-object p3, p2, p1

    goto :goto_0

    .line 194
    :cond_e
    iget-object p2, p0, Lorg/andresoviedo/android_3d_model_engine/a/c;->c:[Ljava/lang/String;

    const-string p3, "shader_"

    aput-object p3, p2, v1

    const-string p3, "shader_vert"

    .line 195
    aput-object p3, p2, v0

    const-string p3, "shader_frag"

    .line 196
    aput-object p3, p2, p1

    .line 201
    :goto_0
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/a/c;->c:[Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()Lorg/andresoviedo/android_3d_model_engine/a/b;
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 213
    invoke-virtual/range {v0 .. v6}, Lorg/andresoviedo/android_3d_model_engine/a/c;->a(Lorg/andresoviedo/android_3d_model_engine/b/g;ZZZZZ)Lorg/andresoviedo/android_3d_model_engine/a/b;

    move-result-object p0

    return-object p0
.end method

.method public a(Lorg/andresoviedo/android_3d_model_engine/b/g;ZZZZZ)Lorg/andresoviedo/android_3d_model_engine/a/b;
    .locals 7

    const/4 p5, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    .line 65
    invoke-virtual {p1}, Lorg/andresoviedo/android_3d_model_engine/b/g;->H()Ljava/nio/FloatBuffer;

    move-result-object p4

    if-nez p4, :cond_0

    invoke-virtual {p1}, Lorg/andresoviedo/android_3d_model_engine/b/g;->H()Ljava/nio/FloatBuffer;

    move-result-object p4

    if-eqz p4, :cond_1

    :cond_0
    move v4, p5

    goto :goto_0

    :cond_1
    move v4, v0

    :goto_0
    if-eqz p3, :cond_2

    .line 66
    invoke-virtual {p1}, Lorg/andresoviedo/android_3d_model_engine/b/g;->q()[B

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lorg/andresoviedo/android_3d_model_engine/b/g;->I()Ljava/nio/FloatBuffer;

    move-result-object p3

    if-eqz p3, :cond_2

    move v5, p5

    goto :goto_1

    :cond_2
    move v5, v0

    :goto_1
    if-eqz p6, :cond_3

    if-eqz p1, :cond_3

    .line 67
    invoke-virtual {p1}, Lorg/andresoviedo/android_3d_model_engine/b/g;->K()Ljava/nio/FloatBuffer;

    move-result-object p1

    if-eqz p1, :cond_3

    move v6, p5

    goto :goto_2

    :cond_3
    move v6, v0

    :goto_2
    const/4 v3, 0x0

    move-object v1, p0

    move v2, p2

    .line 69
    invoke-direct/range {v1 .. v6}, Lorg/andresoviedo/android_3d_model_engine/a/c;->a(ZZZZZ)[Ljava/lang/String;

    move-result-object p1

    .line 72
    iget-object p2, p0, Lorg/andresoviedo/android_3d_model_engine/a/c;->b:Ljava/util/Map;

    aget-object p3, p1, v0

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/andresoviedo/android_3d_model_engine/a/a;

    if-eqz p2, :cond_4

    return-object p2

    .line 76
    :cond_4
    iget-object p2, p0, Lorg/andresoviedo/android_3d_model_engine/a/c;->a:Ljava/util/Map;

    aget-object p3, p1, p5

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 77
    iget-object p3, p0, Lorg/andresoviedo/android_3d_model_engine/a/c;->a:Ljava/util/Map;

    const/4 p4, 0x2

    aget-object p4, p1, p4

    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const-string p4, "RendererFactory"

    if-eqz p2, :cond_6

    if-nez p3, :cond_5

    goto :goto_3

    :cond_5
    const-string p5, "void main(){"

    const-string p6, "void main(){\n\tgl_PointSize = 5.0;"

    .line 84
    invoke-virtual {p2, p5, p6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string p5, "const int MAX_JOINTS = 60;"

    const-string p6, "const int MAX_JOINTS = gl_MaxVertexUniformVectors > 60 ? 60 : gl_MaxVertexUniformVectors;"

    .line 87
    invoke-virtual {p2, p5, p6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string p5, "\n---------- Vertex shader ----------\n"

    .line 90
    invoke-static {p4, p5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {p4, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string p5, "---------- Fragment shader ----------\n"

    .line 92
    invoke-static {p4, p5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {p4, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string p5, "-------------------------------------\n"

    .line 94
    invoke-static {p4, p5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    aget-object p4, p1, v0

    invoke-static {p4, p2, p3}, Lorg/andresoviedo/android_3d_model_engine/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/andresoviedo/android_3d_model_engine/a/a;

    move-result-object p2

    .line 98
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/a/c;->b:Ljava/util/Map;

    aget-object p1, p1, v0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    .line 79
    :cond_6
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Shaders not found for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

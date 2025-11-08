.class public La/a/b/b/ba;
.super La/a/b/b/a/b;


# static fields
.field public static q:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[B>;"
        }
    .end annotation
.end field

.field public static final r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public s:La/a/b/c/d;

.field public t:[B

.field public u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public v:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, La/a/b/b/ba;->q:Landroid/util/LruCache;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, La/a/b/b/ba;->r:Ljava/util/Map;

    sget-object v0, La/a/b/b/ba;->r:Ljava/util/Map;

    const-string v1, "hue"

    const-string v2, "hue_red"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, La/a/b/b/ba;->r:Ljava/util/Map;

    const-string v2, "hue_orange"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, La/a/b/b/ba;->r:Ljava/util/Map;

    const-string v2, "hue_yellow"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, La/a/b/b/ba;->r:Ljava/util/Map;

    const-string v2, "hue_green"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, La/a/b/b/ba;->r:Ljava/util/Map;

    const-string v2, "hue_aqua"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, La/a/b/b/ba;->r:Ljava/util/Map;

    const-string v2, "hue_blue"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, La/a/b/b/ba;->r:Ljava/util/Map;

    const-string v2, "hue_purple"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, La/a/b/b/ba;->r:Ljava/util/Map;

    const-string v2, "hue_magenta"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, La/a/b/b/ba;->r:Ljava/util/Map;

    const-string v1, "saturation"

    const-string v2, "saturation_red"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, La/a/b/b/ba;->r:Ljava/util/Map;

    const-string v2, "saturation_orange"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, La/a/b/b/ba;->r:Ljava/util/Map;

    const-string v2, "saturation_yellow"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, La/a/b/b/ba;->r:Ljava/util/Map;

    const-string v2, "saturation_green"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, La/a/b/b/ba;->r:Ljava/util/Map;

    const-string v2, "saturation_aqua"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, La/a/b/b/ba;->r:Ljava/util/Map;

    const-string v2, "saturation_blue"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, La/a/b/b/ba;->r:Ljava/util/Map;

    const-string v2, "saturation_purple"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, La/a/b/b/ba;->r:Ljava/util/Map;

    const-string v2, "saturation_magenta"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, La/a/b/b/ba;->r:Ljava/util/Map;

    const-string v1, "luminance"

    const-string v2, "luminance_red"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, La/a/b/b/ba;->r:Ljava/util/Map;

    const-string v2, "luminance_orange"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, La/a/b/b/ba;->r:Ljava/util/Map;

    const-string v2, "luminance_yellow"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, La/a/b/b/ba;->r:Ljava/util/Map;

    const-string v2, "luminance_green"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, La/a/b/b/ba;->r:Ljava/util/Map;

    const-string v2, "luminance_aqua"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, La/a/b/b/ba;->r:Ljava/util/Map;

    const-string v2, "luminance_blue"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, La/a/b/b/ba;->r:Ljava/util/Map;

    const-string v2, "luminance_purple"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, La/a/b/b/ba;->r:Ljava/util/Map;

    const-string v2, "luminance_magenta"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V
    .locals 1

    const-string v0, "hsl"

    invoke-static {v0}, La/a/b/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, La/a/b/b/a/b;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Lco/polarr/renderer/entities/Context;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, La/a/b/b/ba;->u:Ljava/util/Map;

    iget-object p1, p0, La/a/b/b/ba;->u:Ljava/util/Map;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string v0, "hue_red"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, La/a/b/b/ba;->u:Ljava/util/Map;

    const-string v0, "hue_orange"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, La/a/b/b/ba;->u:Ljava/util/Map;

    const-string v0, "hue_yellow"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, La/a/b/b/ba;->u:Ljava/util/Map;

    const-string v0, "hue_green"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, La/a/b/b/ba;->u:Ljava/util/Map;

    const-string v0, "hue_aqua"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, La/a/b/b/ba;->u:Ljava/util/Map;

    const-string v0, "hue_blue"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, La/a/b/b/ba;->u:Ljava/util/Map;

    const-string v0, "hue_purple"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, La/a/b/b/ba;->u:Ljava/util/Map;

    const-string v0, "hue_magenta"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, La/a/b/b/ba;->u:Ljava/util/Map;

    const-string v0, "saturation_red"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, La/a/b/b/ba;->u:Ljava/util/Map;

    const-string v0, "saturation_orange"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, La/a/b/b/ba;->u:Ljava/util/Map;

    const-string v0, "saturation_yellow"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, La/a/b/b/ba;->u:Ljava/util/Map;

    const-string v0, "saturation_green"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, La/a/b/b/ba;->u:Ljava/util/Map;

    const-string v0, "saturation_aqua"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, La/a/b/b/ba;->u:Ljava/util/Map;

    const-string v0, "saturation_blue"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, La/a/b/b/ba;->u:Ljava/util/Map;

    const-string v0, "saturation_purple"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, La/a/b/b/ba;->u:Ljava/util/Map;

    const-string v0, "saturation_magenta"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, La/a/b/b/ba;->u:Ljava/util/Map;

    const-string v0, "luminance_red"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, La/a/b/b/ba;->u:Ljava/util/Map;

    const-string v0, "luminance_orange"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, La/a/b/b/ba;->u:Ljava/util/Map;

    const-string v0, "luminance_yellow"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, La/a/b/b/ba;->u:Ljava/util/Map;

    const-string v0, "luminance_green"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, La/a/b/b/ba;->u:Ljava/util/Map;

    const-string v0, "luminance_aqua"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, La/a/b/b/ba;->u:Ljava/util/Map;

    const-string v0, "luminance_blue"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, La/a/b/b/ba;->u:Ljava/util/Map;

    const-string v0, "luminance_purple"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, La/a/b/b/ba;->u:Ljava/util/Map;

    const-string p1, "luminance_magenta"

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)[[F
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;)[[F"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x9

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_red"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_orange"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    div-float/2addr v7, v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_yellow"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    div-float/2addr v8, v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_green"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    div-float/2addr v9, v6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "_aqua"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    div-float/2addr v10, v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "_blue"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    div-float/2addr v11, v6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "_purple"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    div-float/2addr v12, v6

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "_magenta"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    div-float/2addr v13, v6

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    new-array v5, v0, [[F

    const/4 v15, 0x0

    aput-object v3, v5, v15

    new-array v2, v2, [F

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v4, v3

    const/high16 v16, 0x437f0000    # 255.0f

    mul-float v4, v4, v16

    aput v4, v2, v15

    add-float/2addr v7, v3

    mul-float v7, v7, v16

    const/4 v4, 0x1

    aput v7, v2, v4

    add-float/2addr v8, v3

    mul-float v8, v8, v16

    aput v8, v2, v0

    add-float/2addr v9, v3

    mul-float v9, v9, v16

    const/4 v0, 0x3

    aput v9, v2, v0

    add-float/2addr v10, v3

    mul-float v10, v10, v16

    const/4 v0, 0x4

    aput v10, v2, v0

    add-float/2addr v11, v3

    mul-float v11, v11, v16

    const/4 v0, 0x5

    aput v11, v2, v0

    add-float/2addr v12, v3

    mul-float v12, v12, v16

    const/4 v0, 0x6

    aput v12, v2, v0

    add-float/2addr v13, v3

    mul-float v13, v13, v16

    const/4 v0, 0x7

    aput v13, v2, v0

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float/2addr v0, v6

    add-float/2addr v0, v3

    mul-float v0, v0, v16

    const/16 v1, 0x8

    aput v0, v2, v1

    aput-object v2, v5, v4

    return-object v5

    nop

    :array_0
    .array-data 4
        0x0
        0x41f00000    # 30.0f
        0x42700000    # 60.0f
        0x42b40000    # 90.0f
        0x43340000    # 180.0f
        0x43700000    # 240.0f
        0x43870000    # 270.0f
        0x43960000    # 300.0f
        0x43b40000    # 360.0f
    .end array-data
.end method


# virtual methods
.method public final a(Ljava/lang/String;FZ)V
    .locals 9

    if-nez p3, :cond_0

    iget-object p3, p0, La/a/b/b/ba;->u:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    cmpl-float p3, p3, p2

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, La/a/b/b/ba;->u:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, La/a/b/b/ba;->r:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p3

    const v0, -0xdbd042e

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p3, v0, :cond_3

    const v0, 0x194f8

    if-eq p3, v0, :cond_2

    const v0, 0x463844f8

    if-eq p3, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p3, "luminance"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    move p2, v1

    goto :goto_0

    :cond_2
    const-string p3, "hue"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    move p2, v2

    goto :goto_0

    :cond_3
    const-string p3, "saturation"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    move p2, v3

    :cond_4
    :goto_0
    if-eqz p2, :cond_6

    if-eq p2, v3, :cond_5

    if-eq p2, v1, :cond_7

    return-void

    :cond_5
    move v1, v3

    goto :goto_1

    :cond_6
    move v1, v2

    :cond_7
    :goto_1
    iget-object p2, p0, La/a/b/b/ba;->u:Ljava/util/Map;

    invoke-static {p1, p2}, La/a/b/b/ba;->a(Ljava/lang/String;Ljava/util/Map;)[[F

    move-result-object p1

    new-instance p2, La/a/b/d/b;

    aget-object p3, p1, v2

    aget-object p1, p1, v3

    invoke-direct {p2, p3, p1}, La/a/b/d/b;-><init>([F[F)V

    :goto_2
    const/16 p1, 0x167

    if-gt v2, p1, :cond_8

    invoke-virtual {p2, v2}, La/a/b/d/b;->a(I)F

    move-result p1

    float-to-double v3, p1

    const-wide/16 v5, 0x0

    const-wide v7, 0x406fe00000000000L    # 255.0

    invoke-static/range {v3 .. v8}, La/a/b/f/p;->a(DDD)D

    move-result-wide v3

    double-to-int p1, v3

    iget-object p3, p0, La/a/b/b/ba;->t:[B

    mul-int/lit8 v0, v2, 0x3

    add-int/2addr v0, v1

    int-to-byte p1, p1

    int-to-byte p1, p1

    aput-byte p1, p3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/b/b/ba;->v:Z

    iget-object v0, p0, La/a/b/b/ba;->t:[B

    monitor-enter v0

    :try_start_0
    instance-of v1, p2, Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0, p1, p2, v2}, La/a/b/b/ba;->a(Ljava/lang/String;FZ)V

    goto :goto_0

    :cond_0
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2, v2}, La/a/b/b/ba;->a(Ljava/lang/String;FZ)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    sget-object v0, La/a/b/b/ba;->q:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_0

    array-length v0, p1

    iget-object v1, p0, La/a/b/b/ba;->t:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/b/b/ba;->v:Z

    iput-object p1, p0, La/a/b/b/ba;->t:[B

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public b(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget-object v0, La/a/b/b/ba;->q:Landroid/util/LruCache;

    iget-object p0, p0, La/a/b/b/ba;->t:[B

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public g()V
    .locals 5

    invoke-super {p0}, La/a/b/b/a/b;->g()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v3, v1, v2

    invoke-static {v3}, La/a/b/c/g;->c(I)V

    const/16 v3, 0x438

    new-array v3, v3, [B

    iput-object v3, p0, La/a/b/b/ba;->t:[B

    aget v1, v1, v2

    const/16 v3, 0x1907

    const/16 v4, 0x168

    invoke-static {v1, v3, v4, v0}, La/a/b/f/f;->b(IIII)La/a/b/c/d;

    move-result-object v1

    iput-object v1, p0, La/a/b/b/ba;->s:La/a/b/c/d;

    iget-object v1, p0, La/a/b/b/ba;->s:La/a/b/c/d;

    iget v1, v1, La/a/b/c/d;->a:I

    const/16 v3, 0xde1

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {}, La/a/b/f/f;->b()V

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iput-boolean v0, p0, La/a/b/b/ba;->v:Z

    iget-object v1, p0, La/a/b/b/ba;->u:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, La/a/b/b/a/a;->a:Lco/polarr/renderer/entities/Context;

    iget-object v3, v3, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    invoke-static {v2, v3}, La/a/b/f;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p0, v2, v3, v0}, La/a/b/b/ba;->a(Ljava/lang/String;FZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public j()V
    .locals 12

    invoke-super {p0}, La/a/b/b/a/b;->j()V

    iget-boolean v0, p0, La/a/b/b/ba;->v:Z

    const/16 v1, 0xde1

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/b/b/ba;->t:[B

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, La/a/b/b/ba;->t:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v2, p0, La/a/b/b/ba;->t:[B

    invoke-virtual {v11, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, p0, La/a/b/b/ba;->s:La/a/b/c/d;

    iget v3, v3, La/a/b/c/d;->a:I

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v3, 0xcf5

    const/4 v4, 0x4

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    const/16 v3, 0xde1

    const/4 v4, 0x0

    iget-object v5, p0, La/a/b/b/ba;->s:La/a/b/c/d;

    iget v5, v5, La/a/b/c/d;->d:I

    iget-object v6, p0, La/a/b/b/ba;->s:La/a/b/c/d;

    iget v6, v6, La/a/b/c/d;->b:I

    iget-object v7, p0, La/a/b/b/ba;->s:La/a/b/c/d;

    iget v7, v7, La/a/b/c/d;->c:I

    const/4 v8, 0x0

    iget-object v9, p0, La/a/b/b/ba;->s:La/a/b/c/d;

    iget v9, v9, La/a/b/c/d;->d:I

    const/16 v10, 0x1401

    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v2, p0, La/a/b/b/ba;->v:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    :goto_0
    iget v0, p0, La/a/b/b/a/a;->b:I

    const-string v2, "map"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    const v2, 0x84c1

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object p0, p0, La/a/b/b/ba;->s:La/a/b/c/d;

    iget p0, p0, La/a/b/c/d;->a:I

    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 p0, 0x1

    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    return-void
.end method

.method public l()Z
    .locals 2

    iget-object p0, p0, La/a/b/b/ba;->u:Ljava/util/Map;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public m()V
    .locals 5

    invoke-virtual {p0}, La/a/b/b/ba;->n()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v3, v1, v2

    invoke-static {v3}, La/a/b/c/g;->c(I)V

    const/16 v3, 0x438

    new-array v3, v3, [B

    iput-object v3, p0, La/a/b/b/ba;->t:[B

    aget v1, v1, v2

    const/16 v3, 0x1907

    const/16 v4, 0x168

    invoke-static {v1, v3, v4, v0}, La/a/b/f/f;->b(IIII)La/a/b/c/d;

    move-result-object v1

    iput-object v1, p0, La/a/b/b/ba;->s:La/a/b/c/d;

    iget-object v1, p0, La/a/b/b/ba;->s:La/a/b/c/d;

    iget v1, v1, La/a/b/c/d;->a:I

    const/16 v3, 0xde1

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {}, La/a/b/f/f;->b()V

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iput-boolean v0, p0, La/a/b/b/ba;->v:Z

    iget-object v1, p0, La/a/b/b/ba;->u:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, La/a/b/b/a/a;->a:Lco/polarr/renderer/entities/Context;

    iget-object v3, v3, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    invoke-static {v2, v3}, La/a/b/f;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    instance-of v4, v3, Ljava/lang/Float;

    if-eqz v4, :cond_0

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p0, v2, v3, v0}, La/a/b/b/ba;->a(Ljava/lang/String;FZ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, La/a/b/b/ba;->s:La/a/b/c/d;

    if-eqz v0, :cond_0

    invoke-static {v0}, La/a/b/c/g;->a(La/a/b/c/d;)V

    iget-object p0, p0, La/a/b/b/ba;->s:La/a/b/c/d;

    iget p0, p0, La/a/b/c/d;->a:I

    invoke-static {p0}, La/a/b/c/g;->e(I)V

    :cond_0
    return-void
.end method

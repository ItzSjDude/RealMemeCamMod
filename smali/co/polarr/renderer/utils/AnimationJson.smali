.class public Lco/polarr/renderer/utils/AnimationJson;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/polarr/renderer/utils/AnimationJson$Animation;,
        Lco/polarr/renderer/utils/AnimationJson$ImageItem;,
        Lco/polarr/renderer/utils/AnimationJson$Sprite;
    }
.end annotation


# static fields
.field public static final BLENDING_MODE_MULTIPLY:Ljava/lang/String; = "multiply"

.field public static final BLENDING_MODE_NORMAL:Ljava/lang/String; = "normal"

.field public static final BLENDING_MODE_OVERLAY:Ljava/lang/String; = "overlay"

.field public static final BLENDING_MODE_SCREEN:Ljava/lang/String; = "screen"


# instance fields
.field public platform:Ljava/lang/String;

.field public sprites:[Lco/polarr/renderer/utils/AnimationJson$Sprite;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/io/Reader;)Lco/polarr/renderer/utils/AnimationJson;
    .locals 2

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lco/polarr/renderer/utils/AnimationJson;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/polarr/renderer/utils/AnimationJson;

    return-object p0
.end method


# virtual methods
.method public getPlatform()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/utils/AnimationJson;->platform:Ljava/lang/String;

    return-object p0
.end method

.method public getSprites()[Lco/polarr/renderer/utils/AnimationJson$Sprite;
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/utils/AnimationJson;->sprites:[Lco/polarr/renderer/utils/AnimationJson$Sprite;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lco/polarr/renderer/utils/AnimationJson;->version:Ljava/lang/String;

    return-object p0
.end method

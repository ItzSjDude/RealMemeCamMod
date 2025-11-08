.class public Lcom/oplus/anim/e/ac;
.super Ljava/lang/Object;
.source "ScaleXYParser.java"

# interfaces
.implements Lcom/oplus/anim/e/aj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oplus/anim/e/aj<",
        "Lcom/oplus/anim/g/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/oplus/anim/e/ac;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/oplus/anim/e/ac;

    invoke-direct {v0}, Lcom/oplus/anim/e/ac;-><init>()V

    sput-object v0, Lcom/oplus/anim/e/ac;->a:Lcom/oplus/anim/e/ac;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/util/JsonReader;F)Lcom/oplus/anim/g/d;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object p0

    sget-object v0, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 20
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 22
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    .line 23
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    .line 24
    :goto_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 25
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    :cond_2
    if-eqz p0, :cond_3

    .line 28
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    .line 30
    :cond_3
    new-instance p0, Lcom/oplus/anim/g/d;

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    mul-float/2addr v0, p2

    div-float/2addr v1, p1

    mul-float/2addr v1, p2

    invoke-direct {p0, v0, v1}, Lcom/oplus/anim/g/d;-><init>(FF)V

    return-object p0
.end method

.method public synthetic b(Landroid/util/JsonReader;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/oplus/anim/e/ac;->a(Landroid/util/JsonReader;F)Lcom/oplus/anim/g/d;

    move-result-object p0

    return-object p0
.end method

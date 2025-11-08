.class public final Lc/g/c$a;
.super Lc/g/c;
.source "Random.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/g/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 240
    invoke-direct {p0}, Lc/g/c;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lc/f/b/f;)V
    .locals 0

    .line 240
    invoke-direct {p0}, Lc/g/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 0

    .line 244
    invoke-static {}, Lc/g/c;->c()Lc/g/c;

    move-result-object p0

    invoke-virtual {p0, p1}, Lc/g/c;->a(I)I

    move-result p0

    return p0
.end method

.method public b()I
    .locals 0

    .line 245
    invoke-static {}, Lc/g/c;->c()Lc/g/c;

    move-result-object p0

    invoke-virtual {p0}, Lc/g/c;->b()I

    move-result p0

    return p0
.end method

.class public final Lc/h/c;
.super Lc/h/a;
.source "Ranges.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/h/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/h/a;"
    }
.end annotation


# static fields
.field public static final b:Lc/h/c$a;

.field private static final c:Lc/h/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lc/h/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/h/c$a;-><init>(Lc/f/b/f;)V

    sput-object v0, Lc/h/c;->b:Lc/h/c$a;

    .line 58
    new-instance v0, Lc/h/c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc/h/c;-><init>(II)V

    sput-object v0, Lc/h/c;->c:Lc/h/c;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x1

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lc/h/a;-><init>(III)V

    return-void
.end method


# virtual methods
.method public e()Z
    .locals 1

    .line 45
    invoke-virtual {p0}, Lc/h/c;->a()I

    move-result v0

    invoke-virtual {p0}, Lc/h/c;->b()I

    move-result p0

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 48
    instance-of v0, p1, Lc/h/c;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lc/h/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lc/h/c;

    invoke-virtual {v0}, Lc/h/c;->e()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lc/h/c;->a()I

    move-result v0

    check-cast p1, Lc/h/c;

    invoke-virtual {p1}, Lc/h/c;->a()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lc/h/c;->b()I

    move-result p0

    invoke-virtual {p1}, Lc/h/c;->b()I

    move-result p1

    if-ne p0, p1, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 1

    .line 52
    invoke-virtual {p0}, Lc/h/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lc/h/c;->a()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lc/h/c;->b()I

    move-result p0

    add-int/2addr p0, v0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lc/h/c;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/h/c;->b()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

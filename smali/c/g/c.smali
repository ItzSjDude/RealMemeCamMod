.class public abstract Lc/g/c;
.super Ljava/lang/Object;
.source "Random.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/g/c$a;
    }
.end annotation


# static fields
.field public static final a:Lc/g/c$a;

.field private static final b:Lc/g/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/g/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/g/c$a;-><init>(Lc/f/b/f;)V

    sput-object v0, Lc/g/c;->a:Lc/g/c$a;

    .line 242
    sget-object v0, Lc/d/b;->a:Lc/d/a;

    invoke-virtual {v0}, Lc/d/a;->a()Lc/g/c;

    move-result-object v0

    sput-object v0, Lc/g/c;->b:Lc/g/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic c()Lc/g/c;
    .locals 1

    .line 20
    sget-object v0, Lc/g/c;->b:Lc/g/c;

    return-object v0
.end method


# virtual methods
.method public abstract a(I)I
.end method

.method public b()I
    .locals 1

    const/16 v0, 0x20

    .line 36
    invoke-virtual {p0, v0}, Lc/g/c;->a(I)I

    move-result p0

    return p0
.end method

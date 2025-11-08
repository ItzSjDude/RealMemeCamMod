.class public final Lcom/oplus/c/a/a/a/e;
.super Ljava/lang/Object;
.source "ThumbnailPools.kt"


# static fields
.field public static final a:Lcom/oplus/c/a/a/a/e;

.field private static final b:Lcom/oplus/c/a/a/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Lcom/oplus/c/a/a/a/e;

    invoke-direct {v0}, Lcom/oplus/c/a/a/a/e;-><init>()V

    sput-object v0, Lcom/oplus/c/a/a/a/e;->a:Lcom/oplus/c/a/a/a/e;

    .line 25
    new-instance v0, Lcom/oplus/c/a/a/a/c;

    const/16 v1, 0x10

    const v2, 0x4b000

    invoke-direct {v0, v1, v2}, Lcom/oplus/c/a/a/a/c;-><init>(II)V

    sput-object v0, Lcom/oplus/c/a/a/a/e;->b:Lcom/oplus/c/a/a/a/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lcom/oplus/c/a/a/a/c;
    .locals 1

    .line 25
    sget-object v0, Lcom/oplus/c/a/a/a/e;->b:Lcom/oplus/c/a/a/a/c;

    return-object v0
.end method

.method public static final b()V
    .locals 1

    .line 29
    sget-object v0, Lcom/oplus/c/a/a/a/e;->b:Lcom/oplus/c/a/a/a/c;

    invoke-virtual {v0}, Lcom/oplus/c/a/a/a/c;->b()V

    return-void
.end method

.class public final Lcom/oplus/c/a/c;
.super Ljava/lang/Object;
.source "LightGalleryConfig.kt"


# static fields
.field public static final a:Lcom/oplus/c/a/c;

.field private static b:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/oplus/c/a/c;

    invoke-direct {v0}, Lcom/oplus/c/a/c;-><init>()V

    sput-object v0, Lcom/oplus/c/a/c;->a:Lcom/oplus/c/a/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Ljava/io/File;
    .locals 1

    .line 33
    sget-object v0, Lcom/oplus/c/a/c;->b:Ljava/io/File;

    return-object v0
.end method

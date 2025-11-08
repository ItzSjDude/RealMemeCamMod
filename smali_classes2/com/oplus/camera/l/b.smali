.class public Lcom/oplus/camera/l/b;
.super Ljava/lang/Object;
.source "MyRegionFeatureUtils.java"


# static fields
.field private static final a:Ljava/lang/String; = "b"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Landroid/content/ContentResolver;
    .locals 1

    .line 27
    invoke-static {}, Lcom/oplus/camera/MyApplication;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 35
    invoke-static {}, Lcom/oplus/camera/l/b;->a()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/oplus/b/a/b;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .line 31
    invoke-static {}, Lcom/oplus/camera/l/b;->a()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oplus/b/a/b;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

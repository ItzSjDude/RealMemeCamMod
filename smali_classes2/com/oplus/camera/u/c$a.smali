.class final Lcom/oplus/camera/u/c$a;
.super Ljava/lang/Object;
.source "SuperTextEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/u/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/oplus/camera/u/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Lcom/oplus/camera/u/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/camera/u/c;-><init>(Lcom/oplus/camera/u/c$1;)V

    sput-object v0, Lcom/oplus/camera/u/c$a;->a:Lcom/oplus/camera/u/c;

    return-void
.end method

.method static synthetic a()Lcom/oplus/camera/u/c;
    .locals 1

    .line 58
    sget-object v0, Lcom/oplus/camera/u/c$a;->a:Lcom/oplus/camera/u/c;

    return-object v0
.end method

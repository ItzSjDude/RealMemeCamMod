.class final Lcom/oplus/camera/util/i$a;
.super Ljava/lang/Object;
.source "MultipleTaskUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/util/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/oplus/camera/util/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Lcom/oplus/camera/util/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/camera/util/i;-><init>(Lcom/oplus/camera/util/i$1;)V

    sput-object v0, Lcom/oplus/camera/util/i$a;->a:Lcom/oplus/camera/util/i;

    return-void
.end method

.method static synthetic a()Lcom/oplus/camera/util/i;
    .locals 1

    .line 47
    sget-object v0, Lcom/oplus/camera/util/i$a;->a:Lcom/oplus/camera/util/i;

    return-object v0
.end method

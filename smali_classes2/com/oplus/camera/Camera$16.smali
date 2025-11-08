.class Lcom/oplus/camera/Camera$16;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/Camera;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/oplus/camera/Camera;


# direct methods
.method constructor <init>(Lcom/oplus/camera/Camera;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1790
    iput-object p1, p0, Lcom/oplus/camera/Camera$16;->c:Lcom/oplus/camera/Camera;

    iput-object p2, p0, Lcom/oplus/camera/Camera$16;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/camera/Camera$16;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1793
    iget-object v0, p0, Lcom/oplus/camera/Camera$16;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/camera/Camera$16;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/oplus/camera/util/Util;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

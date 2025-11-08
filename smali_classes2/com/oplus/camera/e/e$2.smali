.class Lcom/oplus/camera/e/e$2;
.super Ljava/lang/Object;
.source "OneCameraImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/e/e;->b(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/oplus/camera/e/e;


# direct methods
.method constructor <init>(Lcom/oplus/camera/e/e;Z)V
    .locals 0

    .line 1217
    iput-object p1, p0, Lcom/oplus/camera/e/e$2;->b:Lcom/oplus/camera/e/e;

    iput-boolean p2, p0, Lcom/oplus/camera/e/e$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1220
    iget-object v0, p0, Lcom/oplus/camera/e/e$2;->b:Lcom/oplus/camera/e/e;

    iget-boolean p0, p0, Lcom/oplus/camera/e/e$2;->a:Z

    invoke-static {v0, p0}, Lcom/oplus/camera/e/e;->d(Lcom/oplus/camera/e/e;Z)Z

    return-void
.end method
